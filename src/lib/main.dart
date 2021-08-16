import 'package:flutter/material.dart';
import 'package:milestone_lokalin/model/umkm.dart';
import 'package:milestone_lokalin/widget/ScreenMasukDaftar.dart';
import 'package:milestone_lokalin/widget/ScreenRekomendasi.dart';
import 'package:milestone_lokalin/widget/daftar.dart';
import './widget/Information Page.dart';
import './widget/page3.dart';
import './widget/ScreenLogin.dart';
import './widget/screensignup.dart';
import './widget/ScreenLogin.dart';
import './widget/Information Page.dart';
import './widget/ScreenGado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenMasukdaftar(),
      routes: {
        '/rekomendasi':(context) => ScreenRekomendasi(),
        '/pagecari':(context) => Page3(),
        '/awal' : (context) => ScreenMasukdaftar(),
        '/login':(context) => MainPage2(),
        '/informasi':(context) => Page2(),
        '/daftar':(context) => MainPage(),
        '/informasitoko':(context) => Gado(),
        '/hasilcari':(context) => Satu()

      }
    );
  }
}
