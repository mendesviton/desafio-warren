import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Desafios/desafio1.dart';
import 'package:project/Desafios/desafio2.dart';
import 'package:project/Processo.dart';
import 'package:project/Resolucao/resolucao1.dart';

class Resolucao1 extends StatefulWidget {
  @override
  _Resolucao_1 createState() => _Resolucao_1();
}

class _Resolucao_1 extends State<Resolucao1> {
  @override
  void initstate() {
    super.initState(); //initstate() = oncreate() do delphi
  }

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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
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
                Container(
                    padding: EdgeInsets.all(5),
                    height: 270,
                    width: 900,
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
                    child: ListView(children: [
                      Text(
                          'Numeros que somando com o inverso resultam em número par \n \n' +
                              Processos.fQuantidade(Text),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 13)),
                    ])),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                          style: ButtonStyle(
                              alignment: Alignment.centerRight,
                              shape: MaterialStateProperty.all(CircleBorder()),
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
                          onPressed: () {
                            print(Processos.fQuantidade('s'));
                          },
                          child: ElevatedButton(
                              onPressed: () {
                                ;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PrincipalDesafio()),
                                );
                              },
                              child: Icon(
                                IconData(0xe092,
                                    fontFamily: 'MaterialIcons',
                                    matchTextDirection: true),
                              ),
                              style: ButtonStyle(
                                  alignment: Alignment.centerRight,
                                  shape:
                                      MaterialStateProperty.all(CircleBorder()),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.all(18),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 186, 248,
                                          255)), // <-- Button color
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
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
                              shape: MaterialStateProperty.all(CircleBorder()),
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
                                      builder: (context) => Desafio2()),
                                );
                              },
                              child: Icon(
                                IconData(0xe09b,
                                    fontFamily: 'MaterialIcons',
                                    matchTextDirection: true),
                              ),
                              style: ButtonStyle(
                                  alignment: Alignment.centerRight,
                                  shape:
                                      MaterialStateProperty.all(CircleBorder()),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.all(18),
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                      Color.fromARGB(255, 186, 248,
                                          255)), // <-- Button color
                                  overlayColor:
                                      MaterialStateProperty.resolveWith<Color?>(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.pressed))
                                        return Colors
                                            .indigo; // <-- Splash color
                                    },
                                  ))))
                    ])
              ]);
        },
      ),
    )));
  }
}
/*Alguns números inteiros positivos n possuem uma propriedade na qual a soma de 
n + reverso(n) resultam em números ímpares. Por exemplo,
 36 + 63 = 99 e 409 + 904 = 1313. Considere que n ou reverso(n) não podem começar com 0.
Existem 120 números reversíveis abaixo de 1000.
Construa um algoritmo que mostre na tela todos os números n onde a soma de n + reverso(n)
 resultem em números ímpares que estão abaixo de 1 milhão. */