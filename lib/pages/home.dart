import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/sideBar.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';


class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Home",
              style: TextStyle(
                  fontSize: 24, fontFamily: 'Futura', color: txtNM),
            ),
          ],
        )
      ],
    );
  }
}

