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
              Container(child: Center(child: Text("ABC"))),
              Container(
                child: Center(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      width: 300,
                      height: 180,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(
                              Icons.map,
                              color: Color.fromARGB(255, 115, 75, 118),
                            ),
                            title: Text('Alamat'),
                            subtitle: Text(
                                'Jl. Pemuda No.39 Embong Kaliasin Kec. Genteng, Kota Surabaya, Jawa Timur 60271'),
                          ),
                          const ListTile(
                            leading: Icon(
                              Icons.phone,
                              color: Color.fromARGB(255, 115, 75, 118),
                            ),
                            title: Text('Nomor Telepon'),
                            subtitle: Text('(031) 5490410'),
                          ),
                        ],
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
