import 'package:flutter/material.dart';
import 'package:milestone_lokalin/ScreenDepan.dart';
import 'package:milestone_lokalin/ScreenLogin.dart';
import 'package:milestone_lokalin/ScreenRekomendasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenLogin(),
    );
  }
}
