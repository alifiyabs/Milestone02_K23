import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:milestone_lokalin/model/tourism_place.dart';
import '../model/umkm.dart';

class ScreenRekomendasi extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    final arg1=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    var email = arg1['email'];
    var password = arg1['password'];
    int indexA = 0;

    void CariIndex(){
      for(int i=0;i<ListData.length;i++){
        if(ListData[i].email==email && ListData[i].password==password){
          return;
        }
        indexA+=1;
      }
    }
    CariIndex();
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(165),
        child: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          backgroundColor: Color(0xffECCD4F),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daerahmu",
                style: TextStyle(
                    fontFamily: "InterBlack",
                    fontSize: 18,
                    color: Colors.black),
              ),
              Text(ListData[indexA].alamat,
                  style: TextStyle(
                      fontFamily: "InterBlack",
                      fontSize: 14,
                      color: Colors.black))
            ],
          ),
          flexibleSpace: Container(
            margin: EdgeInsets.fromLTRB(10, 80, 10, 0),
            child: Column(children: [
              TextField(
                onTap: (){
                  Navigator.pushNamed(context, '/pagecari', arguments: indexA);
                },
                textAlign: TextAlign.start,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
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
                  fillColor: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: Text(
                  "Rekomendasi UMKM untukmu",
                  style: TextStyle(fontFamily: "InterBlack", fontSize: 24),
                ),
              ),
            ]),
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the Drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            // Important: Remove any padding from the ListView.

            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      child: DrawerHeader(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                ListData[indexA].url_gambar,
                              ),
                              minRadius: 50,
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Container(
                                  width: 175,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ListData[indexA].nama,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "InterBlack"),
                                        ),
                                        Text(
                                          ListData[indexA].alamat,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                        )
                                      ])),
                            )
                          ],
                        ),
                      ),
                      color: Color(0xffECCD4F),
                    ),
                    ListTile(
                      title: Text('Favoritku'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Alamatku'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Pengaturan akun'),
                      onTap: () {
                        // Update the state of the app
                        // ...
                        // Then close the drawer
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Divider(),
                  Container(
                    child: Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/awal', (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffECCD4F),
                        ),
                        child: Text(
                          "Keluar akun",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
              flex: 3,
              child: Scrollbar(
                isAlwaysShown: true,
                child: Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 8,
                    children: umkm_list.map((umkm) {
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/informasitoko', arguments: umkm);
                          print(umkm.nama_umkm);
                        },
                        child: Card(
                          child: Container(
                            height: 300,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(umkm.image_url))),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, bottom: 10),
                                child: Text(
                                  umkm.nama_umkm,
                                  style: TextStyle(
                                      fontFamily: "InterMedium",
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14,
                                      color: Color(0xffffffff)),
                                ),
                              ),
                            ),
                          ),
                          margin:
                              EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
