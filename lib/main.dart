import 'package:flutter/material.dart';
import 'package:sqflite_example/mytests/test_convert.dart' as contert;
import "basic/basic_main.dart" as root;

void main() {
//  root.entry();
  contert.test();
  runApp(new Center(
    child: new Text(
      'aaa',
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    ),
  ));
}
