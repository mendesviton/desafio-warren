import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Desafios/desafio1.dart';
import 'package:project/Desafios/desafio2.dart';
import 'package:project/Processo.dart';
import 'package:project/Resolucao/resolucao1.dart';
import 'package:project/util.dart';
import 'package:project/Processo.dart';

class Resolucao3 extends StatefulWidget {
  @override
  _Resolucao_3 createState() => _Resolucao_3();
}

class _Resolucao_3 extends State<Resolucao3> {
  String _VetorDigitado = '';
  @override
  void initstate() {
    super.initState();
  }

  TCalculos fProcessos = TCalculos();
  TextEditingController HorariosControler = TextEditingController();
  TextEditingController VetorControler = TextEditingController();
  Util util = Util();
  TCalculos Processos = TCalculos();
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
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            // color: Color.fromARGB(255, 103, 22, 241),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1.5,
                              color: Color.fromARGB(255, 0, 0, 0),
                            )),
                        child: Text(
                          'Resposta',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      // Container(
                      //     height: 70,
                      //     width: 900,
                      //     decoration: BoxDecoration(
                      //         gradient: LinearGradient(
                      //           colors: [
                      //             Color.fromARGB(255, 186, 248, 255),
                      //             Color.fromARGB(255, 186, 248, 255)
                      //           ],
                      //           begin: Alignment.topRight,
                      //           end: Alignment.bottomLeft,
                      //         ),
                      //         // color: Color.fromARGB(255, 103, 22, 241),
                      //         borderRadius: BorderRadius.circular(15),
                      //         border: Border.all(
                      //           width: 1.5,
                      //           color: Color.fromARGB(255, 0, 0, 0),
                      //         )),
                      //     child: ListView(children: [
                      //       Text('Início das áulas 7:30',
                      //           textAlign: TextAlign.center,
                      //           style: TextStyle(
                      //               fontStyle: FontStyle.normal,
                      //               color: Color.fromARGB(255, 0, 0, 0),
                      //               fontSize: 20)),
                      //     ])),
                      SizedBox(height: 25),

                      SizedBox(height: 25),
                      TextFormField(
                        controller: HorariosControler,

                        // onTap: () {
                        // print('Clicou no textform field 1');
                        // },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: Icon(
                              IconData(0xe156, fontFamily: 'MaterialIcons')),
                          hintText: 'Digite um número N',
                          hintStyle:
                              TextStyle(color: Color.fromARGB(31, 0, 0, 0)),
                          // labelText: "SENHA",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 25),
                      TextFormField(
                        controller: VetorControler,

                        // onTap: () {
                        // print('Clicou no textform field 1');
                        // },
                        onChanged: (String value) {
                          setState(() {
                            _VetorDigitado = value;
                          });
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: Icon(
                              IconData(0xf04e4, fontFamily: 'MaterialIcons')),
                          hintText: 'Digite o vetor, seperado por virgula',
                          hintStyle:
                              TextStyle(color: Color.fromARGB(31, 0, 0, 0)),
                          // labelText: "SENHA",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 25),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: ButtonStyle(
                                    alignment: Alignment.centerRight,
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18))),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(1),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(
                                            255, 0, 0, 0)), // <-- Button color
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors
                                              .indigo; // <-- Splash color
                                      },
                                    )),
                                onPressed: () {
                                  print(Processos.fQuantidade('s'));
                                },
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Vetor :[$_VetorDigitado]'),
                                    style: ButtonStyle(
                                        alignment: Alignment.centerRight,
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18))),
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.all(19),
                                        ),
                                        backgroundColor: MaterialStateProperty.all(
                                            Color.fromARGB(255, 186, 248, 255)), // <-- Button color
                                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                          (states) {
                                            if (states.contains(
                                                MaterialState.pressed))
                                              return Colors
                                                  .indigo; // <-- Splash color
                                          },
                                        ))))
                          ]),
                      SizedBox(height: 50),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            ElevatedButton(
                                style: ButtonStyle(
                                    alignment: Alignment.centerRight,
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(2),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(
                                            255, 0, 0, 0)), // <-- Button color
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors
                                              .indigo; // <-- Splash color
                                      },
                                    )),
                                onPressed: () {},
                                child: ElevatedButton(
                                    onPressed: () {
                                      ;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Desafio2()),
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
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color.fromARGB(255, 186, 248,
                                                    255)), // <-- Button color
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color?>(
                                          (states) {
                                            if (states.contains(
                                                MaterialState.pressed))
                                              return Colors
                                                  .indigo; // <-- Splash color
                                          },
                                        )))),
                            ElevatedButton(
                                style: ButtonStyle(
                                    alignment: Alignment.centerRight,
                                    shape: MaterialStateProperty.all(
                                        CircleBorder()),
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(2),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(
                                            255, 0, 0, 0)), // <-- Button color
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color?>(
                                      (states) {
                                        if (states
                                            .contains(MaterialState.pressed))
                                          return Colors
                                              .indigo; // <-- Splash color
                                      },
                                    )),
                                onPressed: () {},
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                            CircleBorder()),
                                        padding: MaterialStateProperty.all(
                                          EdgeInsets.all(16),
                                        ),
                                        alignment: Alignment.center,
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color.fromARGB(255, 186, 248,
                                                    255)), // <-- Button color
                                        overlayColor: MaterialStateProperty
                                            .resolveWith<Color?>((states) {
                                          if (states
                                              .contains(MaterialState.pressed))
                                            return Colors
                                                .indigo; // <-- Splash color
                                        })),
                                    onPressed: () {
                                      print(fProcessos.fMelhor_Combinacao(
                                          int.parse(HorariosControler.text),
                                          _VetorDigitado));
                                    },
                                    child: Text(
                                      'Mostrar \n vetores',
                                      textAlign: TextAlign.center,
                                    ))),
                            Container(width: 60)
                          ])
                    ]),
              ]);
        },
      ),
    )));
  }
}
