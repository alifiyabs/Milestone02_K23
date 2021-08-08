import 'package:flutter/material.dart';

class ScreenDepan extends StatelessWidget {
  const ScreenDepan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Center(
              child: Align(
                alignment: Alignment.centerRight,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image(image: AssetImage("images/setling.png")),
                ),
              ),
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text("LOKALIN.",
                  textAlign: TextAlign.right,
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: TextStyle(
                      letterSpacing: 5,
                      fontFamily: "InterBlack",
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 50)),
            ),
          )
        ],
      ),
    );
  }
}
