import 'package:flutter/material.dart';
import "basic/basic_main.dart" as root;

void main() {
  root.entry();
  runApp(new Center(
    child: new Text(
      'aaa',
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    ),
  ));
}
