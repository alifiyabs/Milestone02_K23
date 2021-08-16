import 'package:flutter/material.dart';
import './ScreenLogin.dart';

class ScreenMasukdaftar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children:<Widget> [
            Container(
                color: Color(0xffeccd4f)
            ),
            Container(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Image(image: AssetImage('images/Ellipse7.png'),
                  )
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/informasi');

                    },
                    child: Text('LOKALIN.',
                      style: TextStyle(
                          letterSpacing: 12,
                          fontSize: 45,
                          fontFamily: 'InterBlack'
                      ),
                    )
                )
            ),

            Positioned(
                top: MediaQuery.of(context).size.width*1.22, //biar nyesuain sama screen
                left: MediaQuery.of(context).size.height*0.05, //biar nyesuain sama screen
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/daftar');
                  },
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
                            fontFamily: 'InterBlack'
                        ),
                      ),
                    ),
                  ),
                )
            ),
            Positioned(
                top: MediaQuery.of(context).size.width*1.4, //biar nyesuain sama screen
                left: MediaQuery.of(context).size.height*0.05, //biar nyesuain sama screen
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');

                  },
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(0.0)
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(13)
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 93.0, top: 8.0, right:93.0,bottom: 8),
                      constraints: const BoxConstraints(minWidth: 88.0,),
                      child: const Text('MASUK',
                        style: TextStyle(
                          letterSpacing: 12,
                          fontSize: 25,
                          color: Colors.black,
                          fontFamily: 'InterBlack',
                        ),
                      ),
                    ),
                  ),
                )
            ),

          ],
        ),
      );
  }
}
