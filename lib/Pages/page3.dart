import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page3 extends StatelessWidget {
  late final bool showCloseButton;

  Page3({this.showCloseButton = false});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(right: 100.0),
        child: Center(child: Text('Page 3')),
      ),
          leading: showCloseButton?IconButton(
          icon: const Icon(Icons.close),
          onPressed: (){
            if(Get.isOverlaysOpen){
              Get.back();
            }else{
               // Get.to(Tab2Page());
            }
          },
      ):null,
      ),
      body: FutureBuilder<List<String>>(
        future: _readJsonData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error loading data'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data available'));
          } else {
            final items = snapshot.data;
            return ListView.builder(
              itemCount: items?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items![index]),
                );
              },
            );
          }
        },
      ),
    );
  }

  Future<List<String>> _readJsonData() async {
    // Define your JSON data as a Dart string
    const jsonString = '''
    {
      "pages": [
         "Samosas.",
    "Chaat.",
    "Pani Puri.",
    "Bhelpuri.",
    "Kachori.",
    "Chole Bhature.",
    "Matar Kulcha.",
    "Dosa.",
    "Milk.",
    "Bread.",
    "Butter.",
    "Cheese.",
    "Yoghurt.",
    "Sandwich.",
    "Pancake.",
    "Pie.",
    "Cake.",
    "Lemon.",
    "Pizza.",
    "Carrots.",
    "Grapes.",
    "Eggs.",
    "Oats.",
    "Pancakes.",
    "Crepes.",
    "Waffles.",
    "Idli."
      ]
    }''';

    // Parse the JSON data
    final jsonData = jsonDecode(jsonString);
    final List<String> pages = List<String>.from(jsonData['pages']);
    return pages;
  }
}