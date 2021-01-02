import 'package:flutter/material.dart';
import 'navbar.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Cool Tourism';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Navbar(),
    );
  }
}
