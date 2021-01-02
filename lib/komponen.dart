import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class TemaTeks {
  static TextStyle headerStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: HexColor("#A15D98"));
  static TextStyle narasiStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300);
  static TextStyle timeStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w300, color: HexColor("#A15D98"));
  static TextStyle iconStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.italic,
      color: HexColor("#A15D98"));
}

class IconString {
  IconData fontAwesomeString(String name) {
    switch (name) {
      case 'swimmer':
        return FontAwesomeIcons.swimmer;
      case 'binoculars':
        return FontAwesomeIcons.binoculars;
      case 'hamburger':
        return FontAwesomeIcons.hamburger;
      case 'camera':
        return FontAwesomeIcons.camera;
      case 'book':
        return FontAwesomeIcons.book;
      case 'userFriends':
        return FontAwesomeIcons.userFriends;
      case 'car':
        return FontAwesomeIcons.car;
      case 'swimmingPool':
        return FontAwesomeIcons.swimmingPool;
      case 'fastfood':
        return Icons.fastfood;
      default:
        return Icons.gamepad;
    }
  }
}
