import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:cool_tourismapp/menu.dart';
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
                  image: AssetImage("images/landingUI.jpg"),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                child: Scaffold(
                  backgroundColor: Color.fromARGB(50, 0, 0, 0),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MainMenu()),
                          );
                        },
                        child: Container(
                          width: 320,
                          height: 45,
                          child: Center(
                            child: Text(
                              'Start The Tour!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Segoe UI'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: Align(
                        alignment: FractionalOffset(0.1, 0.125),
                        child: Text(
                          "Welcome to",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 191, 201, 225),
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.2, 0.2),
                                blurRadius: 5.0,
                                color: Color.fromARGB(75, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Align(
                        alignment: FractionalOffset(0.24, 0.19),
                        child: Text(
                          "Wisata Soerabaja",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 232, 237, 246),
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(0.2, 0.2),
                                blurRadius: 5.0,
                                color: Color.fromARGB(75, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
