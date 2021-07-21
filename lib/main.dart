import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/root/rootPage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color(0xFF000000), scaffoldBackgroundColor: const Color(0xFF000000)),
      home: stilettoRoot(),
    );
  }
}
