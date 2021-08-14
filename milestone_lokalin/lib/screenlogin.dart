import 'package:flutter/material.dart';

class ScreenLogin extends StatelessWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex: 1, child: Container()),
          Flexible(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(10),
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(90),
                              bottomLeft: Radius.circular(90))),
                      child: Center(
                        child: Text(
                          "MASUK",
                          textWidthBasis: TextWidthBasis.longestLine,
                          style: TextStyle(
                              letterSpacing: 5,
                              fontFamily: "InterBlack",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 50),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Flexible(
              flex: 3,
              child: Center(
                child: Text("auau"),
              ))
        ],
      ),
    );
  }
}
