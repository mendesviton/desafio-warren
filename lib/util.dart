import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Util {
  void Message(BuildContext context, String Texto, String Titulo) {
    // configura o button
    // Widget okButton = IconButton(
    // icon: const Icon(Icons.abc),
    // color: Colors.amber.shade300,
    // iconSize: 35,
    // tooltip: 'Logar',
    // onPressed: () {});
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(
        Texto,
        textAlign: TextAlign.center,
      ),
      content: Text(
        Titulo,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Color.fromARGB(255, 59, 141, 39),
      actions: [
        Align(
          alignment: Alignment.topLeft,
        )
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  void MessageNegada(BuildContext context, String Texto, String Titulo) {
    // configura o button

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(
        Texto,
        textAlign: TextAlign.center,
      ),
      content: Text(
        Titulo,
        textAlign: TextAlign.center,
      ),
      backgroundColor: Color.fromARGB(255, 240, 72, 29),
      actions: [
        Align(
          alignment: Alignment.topLeft,
        )
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }
}

/*Widget IntroScreen() {
  return Stack(
    children: <Widget>[
      SplashScreen(
        seconds: 3,
        gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xffED213A), Color(0xff93291E)],
        ),
        navigateAfterSeconds: LoginPage(),
        loaderColor: Colors.transparent,
      ),
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/amauri.png"),
            fit: BoxFit.none,
          ),
        ),
      ),
    ],
  );
}*/
