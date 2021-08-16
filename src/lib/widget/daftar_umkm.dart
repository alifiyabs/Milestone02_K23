import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widget/ScreenGado.dart';
import '../model/umkm.dart';

class List_satu extends StatelessWidget {
  // Widget daftar_umkm

  final Umkm daftar;

  List_satu(this.daftar);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/informasitoko', arguments: daftar);
      },
      child: Container(
        height: 140,
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20,left: 40),
              child: Container(
                height: 110,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(16))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(daftar.image_url),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16.0))
                ),
              )
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150,top: 26,right: 60),
              child: Text(
                daftar.nama_umkm,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Inter'

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150,top: 90,right: 50),
              child: Text(
                daftar.alamat,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}

