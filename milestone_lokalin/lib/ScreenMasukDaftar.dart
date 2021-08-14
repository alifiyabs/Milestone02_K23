import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: ScreenMasukdaftar(),
));


class ScreenMasukdaftar extends StatelessWidget {
  const ScreenMasukdaftar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children:<Widget> [
            Container(
                color: Color(0xffeccd4f)
            ),
            Container(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage('assets/Ellipse 7.png'),
                  )
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: GestureDetector(
                    onTap: () {},
                    child: Text('LOKALIN.',
                      style: TextStyle(
                          letterSpacing: 12,
                          fontSize: 45,
                          fontFamily: 'Inter-Black'
                      ),
                    )
                )
            ),

            Positioned(
                top: MediaQuery.of(context).size.width*1.40, //biar nyesuain sama screen
                left: MediaQuery.of(context).size.height*0.03, //biar nyesuain sama screen
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xffe3b142),
                        borderRadius: BorderRadius.circular(13)
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 83.0, top: 8.0, right:83.0, bottom: 8.0),
                      constraints: const BoxConstraints(minWidth: 88.0),
                      child: const Text('DAFTAR',
                        style: TextStyle(
                            letterSpacing: 12,
                            fontSize: 25,
                            color: Colors.black,
                            fontFamily: 'Inter-Black'
                        ),
                      ),
                    ),
                  ),
                )
            ),
            Positioned(
                top: MediaQuery.of(context).size.width*1.60, //biar nyesuain sama screen
                left: MediaQuery.of(context).size.height*0.03, //biar nyesuain sama screen
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0.0)
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(13)
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 93.0, top: 8.0, right:93.0, bottom: 8.0),
                      constraints: const BoxConstraints(minWidth: 88.0,),
                      child: const Text('MASUK',
                        style: TextStyle(
                          letterSpacing: 12,
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'Inter-Black',
                        ),
                      ),
                    ),
                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}
