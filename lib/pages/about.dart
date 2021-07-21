import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/sideBar.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {

  ScrollController _scrollController = new ScrollController(
    initialScrollOffset: 0.0,
    keepScrollOffset: true,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Bem vindo",
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
