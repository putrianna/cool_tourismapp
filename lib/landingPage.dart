import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPage createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
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
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/bgUI.JPG"), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                child: Scaffold(
                  backgroundColor: Color.fromARGB(35, 0, 0, 0),
                ),
              ),
              Container(
                child: Center(
                  child: Align(
                    alignment: FractionalOffset(0.5, 0.95),
                    child: Card(
                      color: (Color.fromARGB(255, 115, 75, 118)),
                      child: InkWell(
                        splashColor: Colors.white.withAlpha(75),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: Container(
                          width: 320,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Start The Tour!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'Segoe UI'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
