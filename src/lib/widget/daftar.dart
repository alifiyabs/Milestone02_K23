import 'package:flutter/material.dart';
import './daftar_umkm.dart';
import '../model/umkm.dart';
import './ScreenGado.dart';


class Satu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final args3 = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 205, 79),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset('images/Intersect.png'),
                Image.asset('images/Rectangle.png'),
                Container(
                  padding: const EdgeInsets.only(top: 105,right: 7),
                  width: 400,
                  color: Colors.transparent,
                  child: Text(
                    'HASIL PENCARIAN',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: 'Inter',
                      color: Colors.black,
                      fontSize: 29.0,
                      letterSpacing: 1.15
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            DaftarUmkm(umkm_list, kategori, args3)
          ],
        )
      );
  }
}


class DaftarUmkm extends StatefulWidget {
  final List<Umkm> daftar;
  final List<String> cat;
  final String StrA;

  DaftarUmkm(this.daftar,this.cat, this.StrA);

  @override
  _DaftarUmkmState createState() => _DaftarUmkmState();
}

class _DaftarUmkmState extends State<DaftarUmkm> {
  var abc = 'xxxx';
  List<Umkm> _filtered = umkm_list;
  List<Umkm> _filtered2 = umkm_list;

  void setFilter(String text){
    var x;
    setState(() {
      x=text;
    if (x=='Semua'){
      _filtered = umkm_list.where((Umkm) {
        if (Umkm.kategori!=x && Umkm.daerah==widget.StrA){
          return true;
        }
        return false;
      }).toList();
    }else{
      _filtered = umkm_list.where((Umkm) {
        if (Umkm.kategori==x && Umkm.daerah==widget.StrA){
          return true;
        }
        return false;
      }).toList();
    }});
  }

  void Update(String aaa){
    setState(() {
      abc=aaa;
    });
  }
  
  void Filter(){
    _filtered2 = umkm_list.where((Umkm) {
      if (Umkm.daerah==widget.StrA){
        return true;
      }
      return false;
    }).toList();
  }


  @override
  Widget build(BuildContext context) {
    Filter();
    setFilter(abc);

    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (ctx,i){
                return Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Container(
                    width: 100,
                    child: OutlinedButton(
                        onPressed: () {
                          Update(widget.cat[i]);
                          print(abc);
                          setFilter(abc);
                        },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.white)
                      ),
                        child: Text(
                          widget.cat[i],
                          style: TextStyle(
                            color: Colors.black
                          ),
                    ),
                    ),
                  ),
                );
              },
            itemCount: widget.cat.length,
          ),
        ),
        SizedBox(height: 5,),
        abc != 'xxxx' ?
            Container(
              width: 500,
              height: 412,
              child: ListView.builder(
                itemCount: _filtered.length,
                itemBuilder: (bts, a) {
                  return Padding(
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: List_satu(_filtered[a])
                  );
                },
              ),
            )
            :
            Container(
              width: 500,
              height: 412,
              child: ListView.builder(
                itemCount: _filtered2.length,
                itemBuilder: (bts,a) {
                  return Padding(
                      padding: EdgeInsets.only(top: 15,bottom: 15),
                      child: List_satu(_filtered2[a])
                  );
                },
              ),
            ),
      ],
    );
  }
}
