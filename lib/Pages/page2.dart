import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(right: 100.0),
        child: Center(child: Text('Page 2')),
      )),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page3());
          },
          child: const Text('Open Page 3'),
        ),
      ),
    );
  }
}