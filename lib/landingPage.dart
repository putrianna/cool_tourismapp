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
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        width: 300,
                        height: 100,
                        child: Center(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // children: [

                            // ],
                            child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                // child: Icon(Icons.phone, size: 26),
                                child: Text(
                                  "Capture from Camera",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // TextSpan(
                              //   text: "(031) 5490410",
                              //   style: TextStyle(
                              //     // fontFamily: 'MaterialIcons', //<-- fontFamily
                              //     fontSize: 18,
                              //     color: Colors.black,
                              //   ),
                              // ),
                            ],
                          ),
                        )
                            // child: Text('A card that can be tapped'),
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
