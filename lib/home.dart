import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/material.dart';

//void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            print(snapshot.data);
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading...")));
            } else {
              return Container(
                child: Container(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 200,
                        child: Image(
                          image: AssetImage('${snapshot.data.images[0].name}'),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Image(
                          image: AssetImage('${snapshot.data.images[0].name}'),
                        ),
                      ),
                      Container(
                        width: 200,
                        child: Image(
                          image: AssetImage('${snapshot.data.images[0].name}'),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
