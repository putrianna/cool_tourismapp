import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/komponen.dart';
import 'package:flutter/material.dart';

//Done! The code is still spaghetti AF tho. I'll come back and fix later!
//If you can find a way to improve the code, let me know! :D - Putri Anna

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  final komponen = Komponen();
  TextStyle headerStyle = Komponen.headerStyle;
  TextStyle iconStyle = Komponen.iconStyle;

  Future<Data> data;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    data = getPakuwonList();
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
                children: [
                  //Slider image. Mungkin bakal aku ganti pake builder :D
                  Expanded(
                    flex: 1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 400,
                          margin: EdgeInsets.only(right: 5, bottom: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('${snapshot.data.images[0].name}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          margin: EdgeInsets.only(right: 5, bottom: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('${snapshot.data.images[1].name}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 400,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('${snapshot.data.images[2].name}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Badan teks :3
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                            child: Wrap(
                              children: [
                                Text(
                                  "What to Do?",
                                  style: headerStyle,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 250,
                                    child: GridView.builder(
                                        itemCount:
                                            snapshot.data.toDo.todos.length,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            height: 30,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(
                                                  komponen.fontAwesomeString(
                                                      snapshot.data.toDo
                                                          .todos[index].nama),
                                                  size: 40,
                                                ),
                                                Text(
                                                    snapshot.data.toDo
                                                        .todos[index].text,
                                                    style: iconStyle)
                                              ],
                                            ),
                                          );
                                        })),
                              ],
                            ),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                            child: Wrap(
                              children: [
                                Text(
                                  "Facilities",
                                  style: headerStyle,
                                ),
                                Container(
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    height: 200,
                                    child: GridView.builder(
                                        itemCount:
                                            snapshot.data.toDo.fasil.length,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Container(
                                            height: 30,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  komponen.fontAwesomeString(
                                                      snapshot.data.toDo
                                                          .fasil[index].nama),
                                                  size: 40,
                                                ),
                                                Text(
                                                    snapshot.data.toDo
                                                        .fasil[index].text,
                                                    textAlign: TextAlign.center,
                                                    style: iconStyle)
                                              ],
                                            ),
                                          );
                                        })),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
          }),
    );
  }
}
