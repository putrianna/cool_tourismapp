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

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: FutureBuilder(
    //     future: data,
    //     builder: (BuildContext context, AsyncSnapshot snapshot) {
    //       print(snapshot.data);
    //     },
    //   ),
    // );

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/bgUI.JPG"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
