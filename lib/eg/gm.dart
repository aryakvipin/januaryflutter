import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class LocationProvider with ChangeNotifier {
  LocationProvider() {}

  String _deliveryAddress = '';
  double _currentLatitude = 0.0;
  double _currentLongitude = 0.0;

  String get deliveryAddress {
    return _deliveryAddress;
  }

  double get currentLatitude {
    return _currentLatitude;
  }

  double get currentLongitude {
    return _currentLongitude;
  }

  String? postCode;
  String? addressLine;
  String? locality;
  String? city;
  String? selectedState;

  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> GetAddressFromLatLong(Position position) async {
    List<Placemark> placemarks =
    await placemarkFromCoordinates(position.latitude, position.longitude);
    print('Placemarks $placemarks');
    Placemark place = placemarks[0];
    _address = '${place.subLocality}';
    _deliveryAddress =
    '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    _state = place.administrativeArea;

    postCode = place.postalCode!;
    addressLine = '${place.street} ${place.thoroughfare}';
    locality = place.subLocality!;
    city = place.locality!;
    selectedState = place.administrativeArea!;

    print('Initial Address $postCode');
    print('Initial Address $addressLine');
    print('Initial Address $locality');
    print('Initial Address $city');
    print('Initial Address $selectedState');

    _coorDinates['lat'] = position.latitude;
    _coorDinates['lng'] = position.longitude;
    print('Delivery Address: $_deliveryAddress');
    print('Coordinates in Location ${_coorDinates['lat']}');
    print('Coordinates in Location ${_coorDinates['lng']}');
    // setState(() {});
    notifyListeners();
  }

  Future<void> newAddress(double latitude, double longitude) async {   //This is where a new address is selected from
    List<Placemark> placemarks =
    await placemarkFromCoordinates(latitude, longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    _deliveryAddress =
    '${place.street}, ${place.thoroughfare} ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.administrativeArea} ${place.country}';
    postCode = place.postalCode!;
    addressLine = '${place.street} ${place.thoroughfare}';
    locality = place.subLocality!;
    city = place.locality!;
    selectedState = place.administrativeArea!;
    print('Initial Address $postCode');
    print('Initial Address $addressLine');
    print('Initial Address $locality');
    print('Initial Address $city');
    print('Initial Address $selectedState');
    print('New Address $_deliveryAddress');
    // setState(() {});
    _state = place.administrativeArea;
    _coorDinates['lat'] = latitude;
    _coorDinates['lng'] = longitude;
    notifyListeners();
  }

  Future<void> getLocation() async {
    Position position = await _getGeoLocationPosition();
    print('Current Location Response: $position');
    print('Current LatitudeSSSSSSSSS: ${position.latitude}');
    print('Current LongitudeSSSSSSSSSS:${position.longitude}');
    GetAddressFromLatLong(position).then((_) {
      if (_address.length > 0) {
        isLoading = false;
      } else {
        isLoading = true;
      }
    });

    _currentLatitude = position.latitude;
    _currentLongitude = position.longitude;

    notifyListeners();
    // return position;
  }
}