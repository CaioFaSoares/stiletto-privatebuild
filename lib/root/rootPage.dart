import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/sideBar.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';
import 'monoPage.dart';

class stilettoRoot extends StatefulWidget {
  @override
  _stilettoRootState createState() => _stilettoRootState();
}

class _stilettoRootState extends State<stilettoRoot> {

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    int _nav = 1;

    void _navRefresh(val) {
      setState(() {
        if (_nav != val) {
          _nav = val;
        } else if (_nav != val) {

        }
      });
    }

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
