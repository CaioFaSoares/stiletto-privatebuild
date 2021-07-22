import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stiletto/widgets/sideBar.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:stiletto/pages/about.dart';
import 'package:stiletto/pages/home.dart';
import 'package:stiletto/pages/ablGraf.dart';
import 'package:stiletto/pages/ablProg.dart';

import 'rootPage.dart';

class monoPage extends StatefulWidget {
  @override
  _monoPageState createState() => _monoPageState();

  void onTabTapped(int index) {}
}

class _monoPageState extends State<monoPage> {

  int _navIndex = 0;

  @override
  void onTabTapped(int index){
    _navIndex = index;
    setState(() {});
  }

  List<Widget> _paginas = [
    home(),
    about(),
    //graf(),
    //prog(),
  ];

  @override
  Widget build(BuildContext context) {
    return _paginas.elementAt(_navIndex);
  }
}

