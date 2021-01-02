import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/komponen.dart';
import 'package:flutter/material.dart';

//Done! The code is still spaghetti AF tho. I'll come back and fix later!
//If you can find a way to improve the code, let me know! :D - Putri Anna

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  //inisialisasi TextStyle untuk header dan jadwal
  TextStyle headerStyle = Komponen.headerStyle;
  TextStyle eventStyle = Komponen.eventStyle;

  Future<Data> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: data,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading...")));
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                    child: Text(
                      "History",
                      style: headerStyle,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                      child: ListView.builder(
                          itemCount: snapshot.data.histori.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 125,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15)),
                                      child: Image(
                                        image: AssetImage(
                                            '${snapshot.data.histori[index].img}'),
                                        width: 130,
                                        height: 150,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Flexible(
                                      child: Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                                '${snapshot.data.histori[index].tanggal}',
                                                style: headerStyle),
                                            Flexible(
                                              child: Text(
                                                '${snapshot.data.histori[index].event}',
                                                textAlign: TextAlign.right,
                                                style: eventStyle,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
