import 'package:flutter/material.dart';
import 'package:nomore/screens/start.dart';

void main() {
  runApp(NoMoreApp());
}

class NoMoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        StartScreen.routeName: (ctx) => StartScreen(),
      }
    );
  }
}
