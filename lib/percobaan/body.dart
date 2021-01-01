import 'package:cool_tourismapp/jsonDataCatcher.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:cool_tourismapp/contactus.dart';
import 'package:cool_tourismapp/home.dart';
import 'package:cool_tourismapp/todo.dart';
import 'package:flutter/material.dart';
//import 'bak/app.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  var data = Snapshot.getDataList();

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Todo(),
    Text(
      'Index 2: History',
      style: optionStyle,
    ),
    ContactUs(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: FutureBuilder(
          future: data,
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return Container(child: Center(child: Text("Loading...")));
            } else {
              return Center(child: _widgetOptions.elementAt(_selectedIndex),),
            }
          }
      ),),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'What-To-Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Us',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 115, 75, 118),
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //inisialisasi TextStyle untuk header dan jadwal
  TextStyle headerStyle = TemaTeks.headerStyle;
  TextStyle narasiStyle = TemaTeks.narasiStyle;
  TextStyle timeStyle = TemaTeks.timeStyle;

  Future<Data> data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getDataList();
  }

  @override
  Widget build(BuildContext context) {
    return 
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
