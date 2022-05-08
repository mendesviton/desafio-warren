import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Desafios/desafio1.dart';
import 'package:project/Desafios/desafio2.dart';
import 'package:project/Desafios/desafio3.dart';
import 'package:project/Processo.dart';
import 'package:project/Resolucao/resolucao1.dart';
import 'package:project/util.dart';

class Resolucao2 extends StatefulWidget {
  @override
  _Resolucao_2 createState() => _Resolucao_2();
}

class _Resolucao_2 extends State<Resolucao2> {
  int _AlunosQTD = 1;
  int _Atrasados = 0;
  int _Adiantados = 0;
  @override
  void initstate() {
    super.initState(); 
  }

  TextEditingController HorariosControler = TextEditingController();
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
                      Container(
                          height: 70,
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
                            Text('Início das áulas 7:30',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 20)),
                          ])),
                      SizedBox(height: 25),
                      Text('Aluno $_AlunosQTD:',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20)),
                      SizedBox(height: 25),
                      TextFormField(
                        controller: HorariosControler,

                        // onTap: () {
                        // print('Clicou no textform field 1');
                        // },

                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite uma senha válida';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          icon: Icon(
                              IconData(0xe748, fontFamily: 'MaterialIcons')),
                          hintText: 'Digite o horário de chegada',
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
                                    onPressed: () {
                                      setState(() {
                                        _AlunosQTD++;
                                        if (int.parse(HorariosControler.text
                                                .replaceAll(
                                                    RegExp('[^0-9]'), '')) <
                                            7.30) {
                                          _Adiantados++;
                                        } else {
                                          _Atrasados++;
                                        }
                                        HorariosControler.clear();
                                      });
                                    },
                                    child: Text('Registrar horário'),
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
                                onPressed: () {
                                  print(Processos.fQuantidade('s'));
                                },
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
                                      setState(() {
                                        _AlunosQTD--;
                                      });
                                      if (_Adiantados > _Atrasados) {
                                        Util().Message(context, 'Aula iniciada',
                                            'Apenas $_Atrasados alunos chegaram atrasados, de um total de $_AlunosQTD');
                                      } else {
                                        Util().MessageNegada(
                                            context,
                                            'Aula cancelada',
                                            'Apenas $_Adiantados alunos chegaram na hora, de um total de $_AlunosQTD');
                                      }
                                      ;
                                    },
                                    child: Text(
                                      'Iniciar \n aula',
                                      textAlign: TextAlign.center,
                                    ))),
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Desafio3()),
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
                                        ))))
                          ])
                    ]),
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
