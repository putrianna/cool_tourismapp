import 'package:flutter/material.dart';
import 'navbar.dart';

/// This is the main application widget.
class Klenteng extends StatelessWidget {
  static const String _title = 'Cool Tourism';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Navbar(),
    );
  }
}
