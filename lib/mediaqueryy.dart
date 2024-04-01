import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(home: Media(),));
}
class Media extends StatefulWidget {
  const Media({Key? key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    final isPortrait = mediaQueryData.orientation == Orientation.portrait;
    final pixelRatio = mediaQueryData.devicePixelRatio;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Hello, this is a text",
              style: GoogleFonts.rubikIso(
                fontSize: isPortrait ? 20 : 16,
                color: Colors.green[300],
              ),
            ),
            // Add your widgets here to try.
          ],
        ),
      ),
    );
  }
}


class Oriten extends StatefulWidget {
  const Oriten({Key? key});

  @override
  State<Oriten> createState() => _OritenState();
}

class _OritenState extends State<Oriten> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orientation'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return PortraitLayout();
          } else {
            return LandscapeLayout();
          }
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Portrait Mode",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.mobile_friendly,
          size: 100,
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Landscape Mode",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Icon(
          Icons.laptop_windows,
          size: 100,
        ),
      ],
    );
  }
}