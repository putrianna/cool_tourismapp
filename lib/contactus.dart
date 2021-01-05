import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/komponen.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUs createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {
  TextStyle narasiStyle = Komponen.narasiStyle;
  TextStyle timeStyle = Komponen.timeStyle;

  Future<Data> data;

  @override
  void initState() {
    super.initState();
    data = getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bgUI.JPG"),
                        fit: BoxFit.cover)),
              ),
              Container(
                child: Scaffold(
                  backgroundColor: Color.fromARGB(35, 0, 0, 0),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Dikembangkan Oleh:",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          width: 320,
                          height: 200,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Putri Anna Diah I", style: narasiStyle),
                                  Text("1461800152", style: timeStyle),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Regita Megadiningrum",
                                      style: narasiStyle),
                                  Text("1461800160", style: timeStyle),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("M. Nabil Adi Nugroho",
                                      style: narasiStyle),
                                  Text("1461800173", style: timeStyle),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Moh. Misky Fardana",
                                      style: narasiStyle),
                                  Text("1461800179", style: timeStyle),
                                ],
                              ),
                              // Positioned(
                              //   bottom: 50,
                              //   left: 50,
                              //   child: Column(
                              //     mainAxisAlignment: MainAxisAlignment.center,
                              //     crossAxisAlignment: CrossAxisAlignment.center,
                              //     children: <Widget>[
                              //       Padding(
                              //         padding:
                              //             const EdgeInsets.fromLTRB(16, 50, 0, 0),
                              //         child: ListTile(
                              //           leading: new Icon(
                              //             Icons.map,
                              //             size: 36,
                              //             color: Color.fromARGB(255, 115, 75, 118),
                              //           ),
                              //           title: Text('Alamat'),
                              //           subtitle: Text(
                              //               'Jl. Pemuda No.39 Embong Kaliasin Kec. Genteng, Kota Surabaya, Jawa Timur 60271'),
                              //         ),
                              //       ),
                              //       Padding(
                              //         padding:
                              //             const EdgeInsets.fromLTRB(16, 0, 0, 0),
                              //         child: ListTile(
                              //           leading: new Icon(
                              //             Icons.phone,
                              //             size: 34,
                              //             color: Color.fromARGB(255, 115, 75, 118),
                              //           ),
                              //           title: Text('Nomor Telepon'),
                              //           subtitle: Text('(031) 5490410'),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              // GridView.count(
                              //   crossAxisCount: 2,
                              //   children: <Widget>[
                              //     Container(
                              //       child: IconButton(
                              //         icon: new Icon(Icons.map),
                              //         onPressed: () {},
                              //       ),
                              //     )
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
