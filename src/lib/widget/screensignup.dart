import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {


  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffeccd4f), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 0, 0),
                child: Text("LOKALIN.",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              )),
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffE3B142), Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffF0E9CB)),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    margin: EdgeInsets.fromLTRB(20, 200, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Color(0xff06090B),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff06090B))),
                              labelText: "Nama: ",
                              labelStyle: TextStyle(color: Color(0xff06090B))),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.home,
                                color: Color(0xff06090B),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff06090B))),
                              labelText: "Alamat: ",
                              labelStyle: TextStyle(color: Color(0xff06090B))),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xff06090B),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff06090B))),
                              labelText: "Password: ",
                              labelStyle: TextStyle(color: Color(0xff06090B))),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.vpn_key,
                                color: Color(0xff06090B),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff06090B))),
                              labelText: "Konfrimasi Password: ",
                              labelStyle: TextStyle(color: Color(0xff06090B))),
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Text(
                          "-",
                          style:
                              TextStyle(color: Color(0xff06090B), fontSize: 11),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 40,
                              child: Container(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      splashColor: Colors.amber,
                                      onTap: () {},
                                      child: Center(
                                        child: Text(
                                          "Daftar",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xffe3b142),
                                            Color(0xffeccd4f)
                                          ],
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter))))
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Sudah Punya Akun? ",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Masuk ",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color(0xffeccd4f),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
