import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr_interview_task/TabScreen/tab1_page.dart';
import 'package:hogr_interview_task/TabScreen/tab3_page.dart';
import '../TabScreen/tab2_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Tab1Page(),
    Tab2Page(),
    Tab3Page(),
  ];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      // Clear any pages or popups on top of the current tab
      Get.back();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/one.png"),
              color: Color(0xFF3A5A98),
            ),
            label: 'Tab',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/two.png"),
              color: Color(0xFF3A5A98),
            ),
            label: 'Tab',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/three.png"),
              color: Color(0xFF3A5A98),
            ),
            label: 'Tab',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}