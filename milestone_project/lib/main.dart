import 'package:flutter/material.dart';
import 'package:milestone_project/Screen_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: Screen_1(),
    );
  }
}

