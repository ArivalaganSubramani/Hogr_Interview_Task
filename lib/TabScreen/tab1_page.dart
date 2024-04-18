import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Pages/page2.dart';

class Tab1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Page 1'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page2());
          },
          child: const Text('Open Page 2'),
        ),
      ),
    );
  }
}