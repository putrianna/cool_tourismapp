import 'package:cool_tourismapp/bungkul/bungkul_main.dart';
import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/klenteng/klenteng_main.dart';
import 'package:cool_tourismapp/komponen.dart';
import 'package:cool_tourismapp/monkasel/monkasel_main.dart';
import 'package:cool_tourismapp/pakuwon/pakuwon_main.dart';
import 'package:flutter/material.dart';

//Done! The code is still spaghetti AF tho. I'll come back and fix later!
//If you can find a way to improve the code, let me know! :D - Putri Anna

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  //inisialisasi TextStyle untuk header dan jadwal
  TextStyle headerStyle = Komponen.headerStyle;
  TextStyle iconStyle = Komponen.iconStyle;

  Future<MenuList> data;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    data = getMenuList();
  }

  static List<Widget> _widgetPage = <Widget>[
    Monkasel(),
    Klenteng(),
    Bungkul(),
    Pakuwon(), //dont remove it
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Tempat Wisata",
            style: headerStyle,
          ),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          child: FutureBuilder<MenuList>(
              future: data,
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(child: Center(child: Text("Loading...")));
                } else {
                  return Container(
                    padding: EdgeInsets.all(20),
                    child: ListView.builder(
                        itemCount: snapshot.data.menu.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => _widgetPage[index]),
                              );
                            },
                            child: Card(
                              margin: EdgeInsets.only(bottom: 25),
                              elevation: 1.0,
                              shadowColor: Colors.purple[50],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    child: Image(
                                      image: AssetImage(
                                          '${snapshot.data.menu[index].img}'),
                                      width: 150,
                                      height: 125,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Text(
                                        '${snapshot.data.menu[index].nama}',
                                        style: iconStyle,
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  );
                }
              }),
        ));
  }
}
