import 'package:cool_tourismapp/monkasel/monkasel_main.dart';
import 'package:flutter/material.dart';

void main() => runApp(Coolapp());

class Coolapp extends StatelessWidget {
  static const String _title = 'Cool Tourism';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Monkasel(),
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
