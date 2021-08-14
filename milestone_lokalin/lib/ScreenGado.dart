import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Gado()
  );
}

class Gado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE3B142),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Image(image: AssetImage('images/gado-gado.jpeg')),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),shape: CircleBorder()),
                        onPressed: () {},
                        child: Icon(Icons.arrow_back, color: Colors.white,)
                    )
                  ]),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: Color(0xFFECCD4F),
                child: Text('GADO-GADO PAK MANSYUR', style : TextStyle(fontSize : 30.0, fontFamily: 'InterBlack')),
              ),
            Container(
              height: 239,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ Color(0xFFE3B142), Color(0xffeccd4f)]
              )),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text('Jl. Makmur Jaya V No. 5', style : TextStyle(fontSize : 20.0, fontFamily: 'InterMedium')),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: Color(0xFFFCFF72)),
                          onPressed: () {},
                          child: Text('BUKA MAP', style : TextStyle(fontSize : 20.0, fontFamily: 'InterBlack',color: Colors.black)),)
                      ]
                  ),
                  Text('081345678923', style : TextStyle(fontSize : 20.0, fontFamily: 'InterMedium')),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),fixedSize: Size(50, 50)),
                    onPressed: () => {launch("https://shopee.co.id/universal-link/now-food/shop/1233172?deep_and_deferred=1&share&smtt=0.0.9")},
                    child: Image.asset('images/shopee.png',height: 50, width: 50,),
                  ),
                Text('FAVORITKAN', style : TextStyle(fontSize : 15.0, fontFamily: 'InterMedium')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),side: BorderSide(width: 2.0, color: Colors.black,)),
                      onPressed: () {},
                      child: Icon(Icons.favorite, color: Colors.pink,)
                  ),
                ],
              )
            ) ,

            ],



        )
      ),
    );
  }
}