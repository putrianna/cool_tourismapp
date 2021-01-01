import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUs createState() => _ContactUs();
}

class _ContactUs extends State<ContactUs> {
  Future<Data> data;

  @override
  void initState() {
    super.initState();
    data = getDataList();
  }

  void richText() {
    RichText(
      text: TextSpan(
        text: 'Hello ',
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' world!'),
        ],
      ),
    );
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
                          child: Text('A card that can be tapped'),
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
