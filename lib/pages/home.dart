import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/sideBar.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Bem vindo mas diferente!",
                style: TextStyle(
                    fontSize: 12, fontFamily: 'Futura', color: txtNM),
              ),
            ],
          )
        ],
      ),
    );
  }
}
