import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

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
        _texto('Minhas Experiência: \n'),
        _texto('Hospital Santa Casa de Santos  JUN/2014 - SET/2018'),
        _texto('Auxiliar De Enfermagem\n'),
        _texto('Hospital Casa de Saúde de Santos SET/2016 - DEZ/2019'),
        _texto('Técnico De Enfermagem\n'),
        _texto('UPA Zona Leste De Santos ABR/2020 - Atual'),
        _texto('Técnico De Enfermagem\n'),
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
