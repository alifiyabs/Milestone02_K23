import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:milestone_lokalin/model/tourism_place.dart';

class ScreenRekomendasi extends StatelessWidget {
  const ScreenRekomendasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(165), child: AppBarRekomendasi()),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
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
                                  'https://instagram.fcgk23-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s640x640/202100864_492805195126222_7584442575286854749_n.jpg?_nc_ht=instagram.fcgk23-1.fna.fbcdn.net&_nc_cat=110&_nc_ohc=NSjkHPKircMAX8ymSq-&tn=e46StAWxrLSca-a8&edm=AP_V10EBAAAA&ccb=7-4&oh=2e56ab510247f893c081dc33fe285cc1&oe=611A563A&_nc_sid=4f375e'),
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
                                          "Alifiya Brizita Shary",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: "InterBlack"),
                                        ),
                                        Text(
                                          "Jl. Makmur Jaya No.10",
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
                        onPressed: () {},
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
                    children: tourismPlaceList.map((place) {
                      return InkWell(
                          onTap: () {}, child: CardRekomendasi(place: place));
                    }).toList(),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class CardRekomendasi extends StatelessWidget {
  const CardRekomendasi({Key? key, required this.place}) : super(key: key);
  final place;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(this.place.imageAsset))),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              place.name,
              style: TextStyle(
                  fontFamily: "InterMedium",
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                  color: Color(0xffffffff)),
            ),
          ),
        ),
      ),
      margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
    );
  }
}

class AppBarRekomendasi extends StatelessWidget {
  const AppBarRekomendasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                fontFamily: "InterBlack", fontSize: 18, color: Colors.black),
          ),
          Text("Jl. Makmur Jaya 1 No. 10",
              style: TextStyle(
                  fontFamily: "InterBlack", fontSize: 14, color: Colors.black))
        ],
      ),
      flexibleSpace: Container(
        margin: EdgeInsets.fromLTRB(10, 80, 10, 0),
        child: Column(children: [
          TextField(
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
    );
  }
}
