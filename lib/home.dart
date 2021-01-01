import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

//Done! The code is still spaghetti AF tho. I'll come back and fix later!
//If you can find a way to improve the code, let me know! :D - Putri Anna

class Home extends StatelessWidget {
  Data _data;
  Home(this._data);

  //inisialisasi TextStyle untuk header dan jadwal
  TextStyle headerStyle = TemaTeks.headerStyle;
  TextStyle narasiStyle = TemaTeks.narasiStyle;
  TextStyle timeStyle = TemaTeks.timeStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider image. Mungkin bakal aku ganti pake builder :D
        Expanded(
          flex: 1,
          child: Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.only(right: 5, bottom: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${_data.images[0].name}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.only(right: 5, bottom: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${_data.images[1].name}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 200,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('${_data.images[2].name}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        //Badan teks :3
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 15,
                      children: [
                        Text(
                          "About",
                          style: headerStyle,
                        ),
                        Text('${_data.about.narasi}', style: narasiStyle)
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 15,
                      children: [
                        Text(
                          "Jam Buka",
                          style: headerStyle,
                        ),
                        Wrap(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${_data.about.jadwal[0]}',
                                  style: narasiStyle,
                                ),
                                Text(
                                  '${_data.about.jadwal[1]}',
                                  style: timeStyle,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${_data.about.jadwal[2]}',
                                  style: narasiStyle,
                                ),
                                Text(
                                  '${_data.about.jadwal[3]}',
                                  style: timeStyle,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class TemaTeks {
  static TextStyle headerStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.bold, color: HexColor("#A15D98"));
  static TextStyle narasiStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w300);
  static TextStyle timeStyle = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w300, color: HexColor("#A15D98"));
}
