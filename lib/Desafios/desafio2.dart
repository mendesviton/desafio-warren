import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Resolucao/resolucao1.dart';
import 'package:project/Resolucao/resolucao2.dart';

class Desafio2 extends StatefulWidget {
  @override
  _Principa_2 createState() => _Principa_2();
}

class _Principa_2 extends State<Desafio2> {
  @override
  void initstate() {
    super.initState(); //initstate() = oncreate() do delphi
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
          padding: EdgeInsets.only(
            left: 40,
            right: 40,
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          // color: Color.fromARGB(255, 103, 22, 241),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                      child: Text('Desafio 2',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15))),
                  // fontSize: 40,),
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 186, 248, 255),
                              Color.fromARGB(255, 186, 248, 255)
                            ],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                          // color: Color.fromARGB(255, 103, 22, 241),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )),
                      alignment: Alignment.center,
                      height: 250,
                      width: 900,
                      child: Text(
                        'Um professor de programação, frustrado com a falta de disciplina de seus alunos, decidi cancelar a aula se menos de x alunos estiverem presentes quando a aula for iniciada. O tempo de chegada varia entre:' +
                            'Normal: tempoChegada <= 0' +
                            'Atraso: tempoChegada > 0' +
                            'Construa um algoritmo que dado o tempo de chegada de cada aluno e o limite x de alunos presentes, determina se a classe vai ser cancelada ou não ("Aula cancelada” ou “Aula normal”). ',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 13)
                        // fontSize: 40,
                        // color: Color.fromARGB(255, 0, 0, 0),
                        ,
                        textAlign: TextAlign.center,
                      )),
                  Form(
                      child: ListView(shrinkWrap: true, children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ElevatedButton(
                            style: ButtonStyle(
                                alignment: Alignment.centerRight,
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(2),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(
                                        255, 0, 0, 0)), // <-- Button color
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Colors.indigo; // <-- Splash color
                                  },
                                )),
                            onPressed: () {},
                            child: ElevatedButton(
                                onPressed: () {
                                  ;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Resolucao1()),
                                  );
                                },
                                child: Icon(
                                  IconData(0xe092,
                                      fontFamily: 'MaterialIcons',
                                      matchTextDirection: true),
                                ),
                                style: ButtonStyle(
                                    alignment: Alignment.centerRight,
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(18),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(255, 186, 248,
                                            255)), // <-- Button color
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors
                                              .indigo; // <-- Splash color
                                      },
                                    )))),
                        ElevatedButton(
                            style: ButtonStyle(
                                alignment: Alignment.centerRight,
                                shape:
                                    MaterialStateProperty.all(CircleBorder()),
                                padding: MaterialStateProperty.all(
                                  EdgeInsets.all(2),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromARGB(
                                        255, 0, 0, 0)), // <-- Button color
                                overlayColor:
                                    MaterialStateProperty.resolveWith<Color?>(
                                  (states) {
                                    if (states.contains(MaterialState.pressed))
                                      return Colors.indigo; // <-- Splash color
                                  },
                                )),
                            onPressed: () {},
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Resolucao2()),
                                  );
                                },
                                child: Icon(
                                  IconData(0xe09b,
                                      fontFamily: 'MaterialIcons',
                                      matchTextDirection: true),
                                ),
                                style: ButtonStyle(
                                    alignment: Alignment.centerRight,
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(18),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(255, 186, 248,
                                            255)), // <-- Button color
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors
                                              .indigo; // <-- Splash color
                                      },
                                    ))))
                      ],
                    )
                  ]))
                ]);
          })),
    ));
  }
}
