// @dart=2.9
import 'package:flutter/material.dart';
import 'package:project/carregamento.dart';
import 'package:project/Desafios/desafio1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Desafio Warren academy',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.cyan),
        home: SplashScreen());
  }
}
