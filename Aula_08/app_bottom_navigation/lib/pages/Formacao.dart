import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _corpo(context),
      backgroundColor: Colors.black,
    );
  }

  _corpo(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _texto('Formação: \n'),
        _texto('Auxiliar De Enfermagem - 2014'),
        _texto('EACON - Santos\n'),
        _texto('Técnico De Enfermagem - 2015'),
        _texto('EACON - Santos\n'),
        _texto('Análise e Desenvolvimento \nde Sistemas - Previsão 2022'),
        _texto('Fatec Praia Grande')
      ],
    ));
  }

  _texto(String valor) {
    return Text(
      valor,
      style: TextStyle(
          color: Colors.white,
          fontSize: 25,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
