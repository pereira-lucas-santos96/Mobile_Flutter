import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();

  String infoResultado = "Informe os Valores!";

  void _calcular() {
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);

      double imc = peso / (altura * altura);

      if (imc < 18.5) {
        infoResultado = 'IMC: Abaixo do Peso!';
      } else if ((imc >= 18.5) && (imc <= 24.9)) {
        infoResultado = 'IMC: Peso Ideal!';
      } else if ((imc >= 25) && (imc < 29.9)) {
        infoResultado = 'IMC: Sobrepeso!';
      } else if ((imc >= 30) && (imc < 34.9)) {
        infoResultado = 'IMC: Obesidade Grau I!';
      } else if ((imc >= 35) && (imc < 39.9)) {
        infoResultado = 'IMC: Obesidade Grau II!';
      } else {
        infoResultado = 'IMC: Obesidade Grau III ou Mórbida(a)!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.black,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Cálcule seu IMC!"), //
      centerTitle: true,
      backgroundColor: Colors.pink,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Qual o valor do seu peso?", pesoController),
          _campo("Qual o valor da sua altura?", alturaController),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.pink)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.pink, fontSize: 25.0),
      controller: objController,
    );
  }

  _foto() {
    return Image.network(
      'https://guiadafarmacia.com.br/wp-content/uploads/2021/02/corpo-imc.jpg',
      height: 100,
      width: 200,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcular,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.pink,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
