import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/services.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  //Future<Images> images;
  Future<Images> _getImage() async {
    var data = await rootBundle.loadString('json/images.json');
    return Images.fromJson(json.decode(data));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: _getImage(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading...")));
            } else {
              return Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 200,
                                child: Image.asset("${snapshot.data[0].name}"),
                              ),
                              Container(
                                width: 200,
                                child: Image.asset("${snapshot.data[1].name}"),
                              ),
                              Container(
                                width: 200,
                                child: Image.asset("${snapshot.data[2].name}"),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }),
    );
  }
}
