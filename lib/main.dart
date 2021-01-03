import 'package:cool_tourismapp/landingPage.dart';
import 'package:flutter/material.dart';
import 'landingPage.dart';

void main() => runApp(Coolapp());

class Coolapp extends StatelessWidget {
  static const String _title = 'Cool Tourism';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: LandingPage(),
    );
  }
}

// class Landing extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
