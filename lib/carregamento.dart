import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/Desafios/desafio1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PrincipalDesafio(),
            )));
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();

    // Future<String?> getNomeUsuario() {
    // return widget.NomeUsuario;
    // }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.cyan, Colors.indigo]
                        // colors: [Colors.blueAccent, Colors.purple],
                        )),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              // Padding(
                              //     padding:
                              //         EdgeInsets.only(right: 40, bottom: 50)),
                              CircleAvatar(
                                  backgroundColor: Colors.indigo,
                                  radius: 50,
                                  child: CircleAvatar(
                                    child: Icon(
                                      Icons.book,
                                      color: Colors.indigo,
                                      size: 65, 
                                    ),
                                    radius: 48,
                                  )),
                              Padding(padding: EdgeInsets.only(top: 90.0)),
                              Container(
                                  padding: EdgeInsets.all(5),
                                  width: 300,
                                  height: 50,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      // gradient: LinearGradient(
                                      //   // colors:
                                      //   //   Colors.cyan,
                                      //   //   Colors.indigo,
                                      //   // ],
                                      //   // begin: Alignment.topRight,
                                      //   // end: Alignment.bottomLeft,
                                      //   colors: Colors.amber,
                                      // ),
                                      color: Color.fromARGB(255, 186, 248, 255),
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                          width: 2.0, color: Colors.indigo)),
                                  child: Text(
                                    'Desafio Warren Academy',
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  )),
                              // Padding(padding: EdgeInsets.only(top: .0)),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(
                                backgroundColor: Colors.indigo,
                                color: Color.fromARGB(255, 186, 248, 255)),
                            Padding(padding: EdgeInsets.only(top: 30)),
                            Text(
                              "Carregando",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 186, 248, 255),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    );
                  },
                ))));
  }
}
