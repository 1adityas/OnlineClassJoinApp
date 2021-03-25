import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:shared_preferences/shared_preferences.dart';

class front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: new Stack(fit: StackFit.expand, children: <Widget>[
      BackdropFilter(
        filter: new ui.ImageFilter.blur(
          sigmaX: 7.5,
          sigmaY: 7.5,
        ),
        child: new Image.asset(
          'assets/bg.jpg',
          fit: BoxFit.fitHeight,
        ),
      ),
      new Scaffold(
          // backgroundColor: Colors.blue,
          appBar: AppBar(
            toolbarHeight: 70,
            backgroundColor: Colors.black26.withOpacity(0.5),
            title: Text(
              'Select elective',
              style: TextStyle(
                fontFamily: "cursive",
                fontSize: 30,
                foreground: Paint()
                  // ..style = PaintingStyle.stroke
                  // ..strokeWidth = 1
                  ..color = Colors.white60,
              ),
            ),
            titleTextStyle: TextStyle(fontFamily: 'Raleway'),
            elevation: 0.0,
          ),
          backgroundColor: Colors.transparent,
          body: Center(child: Text("hi"))),
      Column(
        children: [
          SizedBox(height: 150),
          Container(
              color: Colors.white12,
              child: Text(
                "Elective-I",
                style: TextStyle(color: Colors.black87, fontSize: 30),
              )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('DIP');
              },
              child: Text(
                "Network Security b1",
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('NSb1');
              },
              child: Text(
                "Network Security b2",
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('NSb2');
              },
              child: Text(
                "Digital Image Processing",
              )),
          SizedBox(
            height: 50,
          ),
          Container(
              color: Colors.white12,
              child: Text(
                "Elective-II",
                style: TextStyle(color: Colors.black87, fontSize: 30),
              )),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('HCP');
              },
              child: Text(
                "High Performance Computing",
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('NRAb1');
              },
              child: Text(
                "Network Routing Algorithms b1",
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('NRAb2');
              },
              child: Text(
                "Network Routing Algorithms b2",
              )),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black12, // background
                onPrimary: Colors.white70, // foreground
              ),
              onPressed: () {
                setElev1('WSN');
              },
              child: Text(
                "Wireless Sensor Networks",
              )),
        ],
      )
    ]));
  }
}

Future setElev1(s) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("elec1", s);
}

Future setElev2(s) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString("elec2", s);
}

Future getElev1() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String s = prefs.getString("elec1") ?? false;
  // print(f);
  return s;
}

Future getElev2() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String s = prefs.getString("elec1") ?? false;
  // print(f);
  return s;
}

Future setVisitFlag() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("f", true);
}

Future getVisitFlag() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool f = prefs.getBool("f") ?? false;
  // print(f);
  return f;
}
