import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TCalculos {
  late String wNumero;
  late int wNumeroIntegerInv;
  late String ListaNumero;
  String fQuantidade(Text) {
    ListaNumero = '';
    for (var i = 1; i < 1000; i++) {
      wNumero = inverter('$i');
      wNumeroIntegerInv = int.parse(wNumero);
      if (wNumeroIntegerInv != i) {
        if ((i + wNumeroIntegerInv) % 2 != 0) {
          ListaNumero = ListaNumero + i.toString() + ',';
        }
      }
    }
    return ListaNumero.substring(0, ListaNumero.length - 1);
  }

  String inverter(texto) {
    return texto.split('').reversed.join();
  }

  String fMelhor_Combinacao(int soma, String lista) {
    var lista1 = [];
    lista = lista.replaceAll(RegExp('[^0-9]'), '');

    for (var i = 0; i < lista.length; i++) {
      lista1.add(lista[i]);
    }
    lista1.sort();


    while 
    for (var i = 0; i < lista1.length; i++) {
      if ((lista1[i] + lista1[i]) < soma) {

      }
    }

    return lista1.toString();
  }
}
