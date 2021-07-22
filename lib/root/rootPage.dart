import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stiletto/widgets/sideBar.dart';

import 'monoPage.dart';

class stilettoRoot extends StatefulWidget {
  @override
  _stilettoRootState createState() => _stilettoRootState();

  static setStateAtt() {}
}

class _stilettoRootState extends State<stilettoRoot> {

  void setStateAtt(int val) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          children: <Widget>[
            sideBar(),
            monoPage(),
          ]
      ),
    );
  }
}
