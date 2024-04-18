import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Pages/page3.dart';

class Tab2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Page 2'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(() =>Page3(showCloseButton: true,));
          },
          child: const Text('Open Page 3'),
        ),
      ),
    );
  }
}