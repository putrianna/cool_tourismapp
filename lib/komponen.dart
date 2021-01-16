import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class Komponen {
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
  static TextStyle eventStyle = TextStyle(
      fontSize: 13, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic);

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
      case 'skate':
        return FontAwesomeIcons.skating;
      case 'run':
        return FontAwesomeIcons.running;
      case 'tree':
        return FontAwesomeIcons.tree;
      case 'pray':
        return FontAwesomeIcons.pray;
      case 'prayinghands':
        return FontAwesomeIcons.prayingHands;
      case 'dragon':
        return FontAwesomeIcons.dragon;
      case 'laughbeam':
        return FontAwesomeIcons.laughBeam;
      case 'shoppingbag':
        return FontAwesomeIcons.shoppingBag;
      case 'music':
        return FontAwesomeIcons.music;
      default:
        return Icons.gamepad;
    }
  }
}
