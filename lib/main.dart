import 'package:flutter/material.dart';
import "basic/main.dart" as root;

void main() {
  root.main();
  runApp(new Center(
    child: new Text(
      'aaa',
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    ),
  ));
}
