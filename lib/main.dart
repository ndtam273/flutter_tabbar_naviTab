import 'package:flutter/material.dart';
import 'package:flutter_sample/routes.dart';
import 'package:flutter_sample/screens/home_screen.dart';
import 'package:flutter_sample/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme(),
      home: HomeScreen(),
      routes: routes,
    );
  }
}
