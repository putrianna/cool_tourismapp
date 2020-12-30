import 'dart:convert';
import 'package:flutter/services.dart';

//Data catcher for about and to-do page
class AboutData {
  String nama;
  String alamat;
  String notelp;
  String narasi;
  List<String> jadwal;
  List<String> todos;
  List<String> fasil;

  AboutData(
      {this.nama,
      this.alamat,
      this.notelp,
      this.narasi,
      this.jadwal,
      this.todos,
      this.fasil});

  AboutData.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    alamat = json['alamat'];
    notelp = json['notelp'];
    narasi = json['narasi'];
    jadwal = json['jadwal'].cast<String>();
    todos = json['todos'].cast<String>();
    fasil = json['fasil'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['notelp'] = this.notelp;
    data['narasi'] = this.narasi;
    data['jadwal'] = this.jadwal;
    data['todos'] = this.todos;
    data['fasil'] = this.fasil;
    return data;
  }
}

Future<AboutData> _getData() async {
  var data = await rootBundle.loadString('json/jsonData.json');
  return AboutData.fromJson(json.decode(data));
}

//Data catcher for history page
class Histori {
  String img;
  String tanggal;
  String event;

  Histori({this.img, this.tanggal, this.event});

  Histori.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    tanggal = json['tanggal'];
    event = json['event'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['tanggal'] = this.tanggal;
    data['event'] = this.event;
    return data;
  }
}

Future<Histori> _getHistory() async {
  var data = await rootBundle.loadString('json/history.json');
  return Histori.fromJson(json.decode(data));
}

//Data catcher for images
class Image {
  String id;
  String name;

  Image({this.id, this.name});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

Future<Image> _getImage() async {
  var data = await rootBundle.loadString('json/images.json');
  return Image.fromJson(json.decode(data));
}
