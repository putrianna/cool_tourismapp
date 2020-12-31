import 'dart:convert';

import 'package:flutter/services.dart';

class Data {
  About about;
  ToDo toDo;
  List<Histori> histori;
  List<Images> images;

  Data({this.about, this.toDo, this.histori, this.images});

  Data.fromJson(Map<String, dynamic> json) {
    about = json['About'] != null ? new About.fromJson(json['About']) : null;
    toDo = json['to-do'] != null ? new ToDo.fromJson(json['to-do']) : null;
    if (json['histori'] != null) {
      histori = new List<Histori>();
      json['histori'].forEach((v) {
        histori.add(new Histori.fromJson(v));
      });
    }
    if (json['images'] != null) {
      images = new List<Images>();
      json['images'].forEach((v) {
        images.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.about != null) {
      data['About'] = this.about.toJson();
    }
    if (this.toDo != null) {
      data['to-do'] = this.toDo.toJson();
    }
    if (this.histori != null) {
      data['histori'] = this.histori.map((v) => v.toJson()).toList();
    }
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class About {
  String nama;
  String alamat;
  String notelp;
  String narasi;
  List<String> jadwal;

  About({this.nama, this.alamat, this.notelp, this.narasi, this.jadwal});

  About.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    alamat = json['alamat'];
    notelp = json['notelp'];
    narasi = json['narasi'];
    jadwal = json['jadwal'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['alamat'] = this.alamat;
    data['notelp'] = this.notelp;
    data['narasi'] = this.narasi;
    data['jadwal'] = this.jadwal;
    return data;
  }
}

class ToDo {
  List<String> todos;
  List<String> fasil;

  ToDo({this.todos, this.fasil});

  ToDo.fromJson(Map<String, dynamic> json) {
    todos = json['todos'].cast<String>();
    fasil = json['fasil'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['todos'] = this.todos;
    data['fasil'] = this.fasil;
    return data;
  }
}

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

class Images {
  String id;
  String name;

  Images({this.id, this.name});

  Images.fromJson(Map<String, dynamic> json) {
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

Future<Data> getDataList() async {
  var data = await rootBundle.loadString('json/jsonData.json');
  return Data.fromJson(json.decode(data));
}