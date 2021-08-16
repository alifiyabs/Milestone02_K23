import 'package:flutter/material.dart';
import '../model/umkm.dart';
import './ScreenRekomendasi.dart';

class MainPage2 extends StatefulWidget {
  @override
  _MainPage2State createState() => _MainPage2State();
}

class _MainPage2State extends State<MainPage2> {
  bool Sama = false;

  final _emailcontrol = TextEditingController();

  final _passwordcontrol = TextEditingController();

  Map<String,String> Data1 = {
    'email':'xxxx',
    'password':'xxxx'
  };

  void Isi(){
    if (_emailcontrol.text.isEmpty || _passwordcontrol.text.isEmpty){
      return;
    }
    setState(() {
      Data1['email']=_emailcontrol.text;
      Data1['password']=_passwordcontrol.text;
    });


  }

  void CekSama(){
    Sama = false;
    setState(() {
      for(int i=0; i<ListData.length; i++){
        if(ListData[i].email==Data1['email'] && ListData[i].password==Data1['password']){
          Sama = true;
        }
        if(Sama){
          break;
        }
      }
    });
  }

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
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: _emailcontrol,
                          onSubmitted: (_)=>Isi(),
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Color(0xff06090B),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff06090B))),
                              labelText: "Email: ",
                              labelStyle: TextStyle(color: Color(0xff06090B))),
                        ),
                        TextField(
                          controller: _passwordcontrol,
                          onSubmitted: (_)=>Isi(),
                          obscureText: true,
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
                        )
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Text(
                          "Forgot Password?",
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
                                      onTap: () {
                                        Isi();
                                        CekSama();
                                        print(Sama);
                                        print(Data1['email']);
                                        print(Data1['password']);
                                        if(Sama==true){
                                          Navigator.of(context).pushReplacementNamed('/rekomendasi',arguments: Data1);
                                          };
                                        },
                                      child: Center(
                                        child: Text(
                                          "Sign In",
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
                        "Don't Have An Account? ",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sign Up ",
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
