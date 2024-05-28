import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../controller/ProductController.dart';
import '../widgets/ProductCustomWidget.dart';

void main() {
  runApp(GetMaterialApp(home: HttpHome(),
  ));
}

class HttpHome extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: const [
          Icon(Icons.shopping_cart),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Shop Now",
                style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold),
              )
          ),
          Expanded(
              child: Obx(() {
                if (controller.isLoading.value) {
                  return const Center(child: CircularProgressIndicator(),);
                } else {
                  return GridView.builder(
                     itemCount: controller.productList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10
                      ), itemBuilder: (context, index){
                          return ProdutCustom(controller.productList[index]);
                  });
                }
              }))
        ],
      ),
    );
  }
}
