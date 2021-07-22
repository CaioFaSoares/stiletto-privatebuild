import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:stiletto/pages/about.dart';
import 'package:stiletto/pages/home.dart';
import 'package:stiletto/pages/ablGraf.dart';
import 'package:stiletto/pages/ablProg.dart';

import 'package:stiletto/widgets/links.dart';

import 'package:stiletto/values/colors.dart';

class stilettoRoot extends StatefulWidget {
  @override
  _stilettoRootState createState() => _stilettoRootState();
}

class _stilettoRootState extends State<stilettoRoot> {
  int _navIndex = 0;

  @override
  void onTabTapped(int index) {
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Row(children: <Widget>[
        Container(
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
                      Icon(Icons.perm_identity, size: 14, color: txtNM),
                      TextButton(
                          child: Text('Home',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura',
                                  color: txtNM),
                              textAlign: TextAlign.left),
                          onPressed: () {
                            navButton(0);
                          })
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
                        Icons.home,
                        size: 14,
                        color: txtNM,
                      ),
                      TextButton(
                          child: Text('About',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura',
                                  color: txtNM),
                              textAlign: TextAlign.left),
                          onPressed: () {
                            navButton(1);
                          })
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
                        Icons.home,
                        size: 14,
                        color: txtNM,
                      ),
                      TextButton(
                          child: Text('About',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura',
                                  color: txtNM),
                              textAlign: TextAlign.left),
                          onPressed: () {
                            navButton(2);
                          })
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
                        Icons.home,
                        size: 14,
                        color: txtNM,
                      ),
                      TextButton(
                          child: Text('About',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Futura',
                                  color: txtNM),
                              textAlign: TextAlign.left),
                          onPressed: () {
                            navButton(3);
                          })
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
              links(),
            ],
          ),
        ),
        _paginas.elementAt(_navIndex),
      ]),
    );
  }

  void navButton(int index) {
    debugPrint('Pressed $index');
    onTabTapped(index);
  }
}
