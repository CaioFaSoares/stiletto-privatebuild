import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stiletto/widgets/widgetsLib.dart';
import 'package:stiletto/widgets/flIcons.dart';
import 'package:stiletto/values/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:stiletto/root/rootPage.dart';
import 'package:stiletto/root/monoPage.dart';

class sideBar extends StatefulWidget {
  @override
  _sideBarState createState() => _sideBarState();
}

class _sideBarState extends State<sideBar> {
  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width / 3,
      child: Column(
        children: [
          // Espaçamento para a barra de URL
          SizedBox(
            child: Container(
              height: size.height / 20,
              color: Colors.transparent,
            ),
          ),
          // Imagem
          Row(
            children: [
              SizedBox(
                child: Container(
                  width: size.width / 40,
                  color: Colors.transparent,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0)),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(
                  'assets/Images/AVI.jpg',
                  height: size.height / 6,
                ),
              )
            ],
          ),
          // Espaçamento da imagem para a 1ª caixa de texto
          SizedBox(
            child: Container(
              height: size.height / 125,
              color: Colors.transparent,
            ),
          ),
          // 1ª caixa de texto
          Row(
            children: [
              SizedBox(
                child: Container(
                  width: size.width / 40,
                  color: Colors.transparent,
                ),
              ),
              Text(
                "Caio Soares",
                style: TextStyle(
                    fontSize: 18, fontFamily: 'Futura', color: txtNM),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      width: size.width / 40,
                      color: Colors.transparent,
                    ),
                  ),
                  //Tab(icon: Icon(flIcons.twitter)),
                  Text(
                    "ENGCOMP @IFCE",
                    style: TextStyle(
                        fontSize: 12, fontFamily: 'Futura', color: txtNM),
                    textAlign: TextAlign.left,
                  ),
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
                  //Tab(icon: Icon(flIcons.twitter)),
                  Text(
                    "Diretor de Arte @PorCoral",
                    style: TextStyle(
                        fontSize: 12, fontFamily: 'Futura', color: txtNM),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          // Espaçamento da 1ª caixa de texto para a 2ª caixa de texto
          SizedBox(
            child: Container(
              width: size.width / 40,
              height: size.height / 100,
              color: Colors.transparent,
            ),
          ),

          // 2ª caixa de texto
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      width: size.width / 40,
                      color: Colors.transparent,
                    ),
                  ),
                  Icon(
                      Icons.perm_identity, size: 14, color: txtNM
                  ),
                  InkWell(
                      child: Text('Home',
                        style: TextStyle(fontSize: 14, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => monoPage.onTabTapped(0),
                  ),
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
                  Icon(
                    Icons.home, size: 14, color: txtNM,
                  ),
                  InkWell(
                      child: Text('About',
                        style: TextStyle(fontSize: 14, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                    onTap: () {
                      setState(() {
                        monoPage.onTabTapped(1);
                      });
                    },
                  ),
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
                  Icon(
                    Icons.home, size: 14, color: txtNM,
                  ),
                  InkWell(
                      child: Text('Gráficos',
                        style: TextStyle(fontSize: 14, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => launch('https://twitter.com/it08s')
                  ),
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
                  Icon(
                    Icons.home, size: 14, color: txtNM,
                  ),
                  InkWell(
                      child: Text('Programação',
                        style: TextStyle(fontSize: 14, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      //onTap: () => _navRefresh(1),
                  )
                ],
              ),
            ],
          ),
          // Espaçamento da 2ª caixa de texto para a 3ª caixa de texto
          SizedBox(
            child: Container(
              width: size.width / 40,
              height: size.height / 100,
              color: Colors.transparent,
            ),
          ),
          // 3ª caixa de texto
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    child: Container(
                      width: size.width / 40,
                      color: Colors.transparent,
                    ),
                  ),
                  Icon(
                      MyFlutterApp.github, size: 12, color: txtNM
                  ),
                  InkWell(
                      child: Text('Github',
                        style: TextStyle(fontSize: 12, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => launch('https://github.com/CaioFaSoares')
                  ),
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
                  Icon(
                      MyFlutterApp.behance, size: 12, color: txtNM
                  ),
                  InkWell(
                      child: Text('Behance',
                        style: TextStyle(fontSize: 12, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => launch('https://behance.net/caiosoares1')
                  ),
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
                  Icon(
                      MyFlutterApp.github, size: 12, color: txtNM
                  ),
                  InkWell(
                      child: Text('LinkedIn',
                        style: TextStyle(fontSize: 12, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => launch('https://www.linkedin.com/in/caio-soares-3153341a1/')
                  ),
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
                  Icon(
                      MyFlutterApp.twitter, size: 12, color: txtNM
                  ),
                  InkWell(
                      child: Text('Twitter',
                        style: TextStyle(fontSize: 12, fontFamily: 'Futura', color: txtNM), textAlign: TextAlign.left,),
                      onTap: () => launch('https://twitter.com/it08s')
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
