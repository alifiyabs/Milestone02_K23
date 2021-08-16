import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import './daftar.dart';
import '../model/umkm.dart';


class Gado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final args3 = ModalRoute.of(context)!.settings.arguments as Umkm;
    var a = args3;

    return Scaffold(
        backgroundColor: Color(0xFFE3B142),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Image(image: NetworkImage(a.image_url)),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),shape: CircleBorder()),
                        onPressed: () {},
                        child: Icon(Icons.arrow_back, color: Colors.white,)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310),
                      child: Container(
                          height: 372,
                          padding: EdgeInsets.only(top: 1),
                          decoration: BoxDecoration(gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFE3B142), Color(0xffeccd4f)]
                          )),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row (
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Container(
                                      child: Text(a.alamat, style : TextStyle(fontSize : 20.0, fontFamily: 'InterMedium')),
                                      width: 240,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(primary: Color(0xFFFCFF72)),
                                      onPressed: () {launch(a.url_maps);},
                                      child: Text('BUKA MAP', style : TextStyle(fontSize : 20.0, fontFamily: 'InterBlack',color: Colors.black)),)
                                  ]
                              ),
                              Text(a.no_telp, style : TextStyle(fontSize : 20.0, fontFamily: 'InterMedium')),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),fixedSize: Size(50, 50)),
                                onPressed: () => {launch(a.url_lokasi)},
                                child: Image.asset('images/shop-4.png',height: 50, width: 50,),
                              ),
                              Text('FAVORITKAN', style : TextStyle(fontSize : 15.0, fontFamily: 'InterMedium')),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Color(0xFFE3B142),side: BorderSide(width: 2.0, color: Colors.black,)),
                                  onPressed: () {},
                                  child: Icon(Icons.favorite, color: Colors.pink,)
                              ),
                            ],
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 278),
                      child: Container(
                        width: 500,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        color: Color(0xFFECCD4F),
                        child: Text(a.nama_umkm, style : TextStyle(fontSize : 30.0, fontFamily: 'InterBlack')),
                      ),
                    ),
                  ]),
            ],
        )
      );
  }
}