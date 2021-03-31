import 'package:flutter/material.dart';

import '../size_config.dart';
import 'tab1/tab1_screen.dart';
import 'tab2/tab2_screen.dart';
import 'tab3/tab3_screen.dart';
import 'tab4/tab4_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _pages = [
      {'title': 'Tab1', 'page': Tab1Screen()},
      {'title': 'Tab2', 'page': Tab2Screen()},
      {'title': 'Tab3', 'page': Tab3Screen()},
      {'title': 'Tab4', 'page': Tab4Screen()}
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.amber,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Tab1"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Tab2"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Tab3"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Tab4"),
        ],
      ),
    );
  }
}
