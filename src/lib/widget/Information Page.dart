import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeccd4f),
        body: Stack(children: [
          Align(
            alignment: Alignment.topRight,
              child: Container(
                height: 245,
                width: 200, 
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                  shape: BoxShape.circle
                  ),
                ),
              ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(padding: EdgeInsets.only(left: 15, right: 15, top: 80),
                child: Text('LOKALIN. adalah sebuah aplikasi yang dapat membantu kamu untuk mencari berbagai UMKM di sekitar daerahmu. Aplikasi ini menawarkan berbagai kategori yang dapat dicari dan akan mengarahkan kamu ke toko online usaha tersebut. Yuk, mulai pakai produk lokal dan bantu usaha kecil yang terdampak pandemi!', 
                textAlign: TextAlign.left,
                style: TextStyle(
                  letterSpacing: 3,
                  fontSize: 21, 
                  fontFamily: 'InterBlack',
                  ),
                ),
                decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(24) 
                ),
                height: 465,
                width: 355,
               ),
            ),
          ],
        ), 
      );
  }
}