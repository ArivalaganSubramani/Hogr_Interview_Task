import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_interview_task/TabScreen/tab2_page.dart';

class Tab3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Page 3'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // This will navigate to Tab 2
            Get.to(Tab2Page());
          },
          child: const Text('Go to Tab 2'),
        ),
      ),
    );
  }
}