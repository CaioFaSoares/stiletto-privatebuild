import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:stiletto/values/colors.dart';

class links extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              child: Container(
                width: size.width / 40,
                color: Colors.transparent,
              ),
            ),
            Icon(MyFlutterApp.github, size: 14, color: txtNM),
            InkWell(
                child: Text(
                  'Github',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Futura',
                      color: txtNM),
                  textAlign: TextAlign.left,
                ),
                onTap: () =>
                    launch('https://github.com/CaioFaSoares')),
          ],
        ),
        Row(
          children: [
            SizedBox(
              child: Container(
                width: size.width / 40,
                color: Colors.transparent,
              ),
            ),
            Icon(MyFlutterApp.behance, size: 14, color: txtNM),
            InkWell(
                child: Text(
                  'Behance',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Futura',
                      color: txtNM),
                  textAlign: TextAlign.left,
                ),
                onTap: () =>
                    launch('https://behance.net/caiosoares1')),
          ],
        ),
        Row(
          children: [
            SizedBox(
              child: Container(
                width: size.width / 40,
                color: Colors.transparent,
              ),
            ),
            Icon(MyFlutterApp.github, size: 14, color: txtNM),
            InkWell(
                child: Text(
                  'LinkedIn',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Futura',
                      color: txtNM),
                  textAlign: TextAlign.left,
                ),
                onTap: () => launch(
                    'https://www.linkedin.com/in/caio-soares-3153341a1/')),
          ],
        ),
        Row(
          children: [
            SizedBox(
              child: Container(
                width: size.width / 40,
                color: Colors.transparent,
              ),
            ),
            Icon(MyFlutterApp.twitter, size: 14, color: txtNM),
            InkWell(
                child: Text(
                  'Twitter',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Futura',
                      color: txtNM),
                  textAlign: TextAlign.left,
                ),
                onTap: () => launch('https://twitter.com/it08s')),
          ],
        ),
      ],
    );
  }
}
