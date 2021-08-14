import 'package:flutter/material.dart';

void main() {
  runApp(Page3());
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Stack(
        children: [
          Container(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Image(image: AssetImage('Images/sapi.png')),
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
                Text('Halo, Fiya!',
                    style:
                        TextStyle(fontSize: 44, fontFamily: 'InterSemiBold')),
                Text('Bagaimana kabarmu hari ini?',
                    style:
                        TextStyle(fontSize: 28, fontFamily: 'InterSemiBold')),
                Spacer(
                  flex: 1,
                ),
                Text('Masukkan daerah yang ingin Kamu cari',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 28, fontFamily: 'InterSemiBold')),
                Container(
                  child: IconButton(
                    onPressed: null,
                    icon: const Icon(Icons.search),
                    iconSize: 35,
                    alignment: Alignment.centerRight,
                  ),
                  height: 55,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Color(0xffe3b142),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xffffffff),
    ));
  }
}
