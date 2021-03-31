import 'package:flutter/material.dart';
import 'package:flutter_sample/screens/miniScreen/mini1_screen.dart';
import 'package:flutter_sample/screens/miniScreen/mini2_screen.dart';
import 'package:flutter_sample/screens/miniScreen/mini3_screen.dart';
import 'package:flutter_sample/screens/miniScreen/mini4_screen.dart';

class Tab1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab1 Screen"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Mini1Screen(),
              Mini2Screen(),
              Mini3Screen(),
              Mini4Screen()
            ],
          ),
        ));
  }
}
