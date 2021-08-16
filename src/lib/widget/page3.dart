import 'package:flutter/material.dart';
import 'package:milestone_lokalin/model/umkm.dart';
import './daftar.dart';

class Page3 extends StatelessWidget {

  final cari = TextEditingController();
  String hasil1 = '';
  
  void Update(){
    hasil1 = cari.text;
  }

  @override
  Widget build(BuildContext context) {
    final args2=ModalRoute.of(context)!.settings.arguments as int;
    int i=args2;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image(image: AssetImage('images/sapi.png')),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 2,
                ),
                Text('Halo, ${ListData[i].panggilan}!',
                    style:
                        TextStyle(fontSize: 44, fontFamily: 'Inter')),
                Text('Bagaimana kabarmu hari ini?',
                    style:
                        TextStyle(fontSize: 28, fontFamily: 'Inter')),
                Spacer(
                  flex: 1,
                ),
                Text('Masukkan daerah yang ingin Kamu cari',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 28, fontFamily: 'Inter')),
                SizedBox(height: 10,),
                Container(
                  width: 350,
                  child: TextField(
                    controller: cari,
                    onSubmitted: (_){
                      Update();
                      Navigator.pushReplacementNamed(context, '/hasilcari', arguments: hasil1);
                      print(hasil1);
                    },
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: GestureDetector(
                        onTap: (){
                          Update();
                          Navigator.of(context).pushReplacementNamed('/hasilcari', arguments: hasil1);
                        },
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      hintText: '',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: "InterMedium",
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      contentPadding: EdgeInsets.all(4),
                      fillColor: Color(0xffe3b142),
                    ),
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffffffff),
    );
  }
}
