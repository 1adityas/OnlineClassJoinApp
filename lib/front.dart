import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:shared_preferences/shared_preferences.dart';

class front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Stack(fit: StackFit.expand, children: <Widget>[
      new Image.asset(
        'assets/bg.jpg',
        fit: BoxFit.fitHeight,
      ),
      Container(
          child: ElevatedButton(
            onPressed: () async {
              setVisitFlag();
            },
            child: Text("click"),
          ))
    ]));
  }
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
