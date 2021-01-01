import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//Done! The code is still spaghetti AF tho. I'll come back and fix later!
//If you can find a way to improve the code, let me know! :D - Putri Anna

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  //inisialisasi TextStyle untuk header dan jadwal

  TextStyle headerStyle = TemaTeks.headerStyle;
  TextStyle narasiStyle = TemaTeks.narasiStyle;
  TextStyle timeStyle = TemaTeks.timeStyle;

  Future<Data> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getDataList();
  }

  IconData fontAwesomeString(String name) {
    switch (name) {
      case 'swimmer':
        return FontAwesomeIcons.swimmer;
      case 'binoculars':
        return FontAwesomeIcons.binoculars;
      case 'hamburger':
        return FontAwesomeIcons.hamburger;
      case 'camera':
        return FontAwesomeIcons.camera;
      case 'book':
        return FontAwesomeIcons.book;
      case 'userFriends':
        return FontAwesomeIcons.userFriends;
      case 'car':
        return FontAwesomeIcons.car;
      case 'swimmingPool':
        return FontAwesomeIcons.swimmingPool;
      case 'fastfood':
        return Icons.fastfood;
    }
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
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Wrap(
                        children: [
                          Text(
                            "What to Do?",
                            style: headerStyle,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              height: 300,
                              child: GridView.builder(
                                  itemCount: snapshot.data.toDo.todos.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0,
                                  ),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      height: 50,
                                      color: Colors.amber,
                                      child: Center(
                                          child: Column(
                                        children: [
                                          Icon(fontAwesomeString(snapshot
                                              .data.toDo.todos[index].nama))
                                        ],
                                      )),
                                    );
                                  }))
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
