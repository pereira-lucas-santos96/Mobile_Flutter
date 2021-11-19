import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController x1Controller = TextEditingController();
  TextEditingController x2Controller = TextEditingController();

  String infoResultado = "Informe os números!!";

  void _calcularMultiplicacao() {
    setState(() {
      double x1 = double.parse(x1Controller.text);
      double x2 = double.parse(x1Controller.text);

      double resultado = x1 * x2;

      infoResultado = 'Resultado: $resultado';
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
      title: Text("Multiplicador de Numeros"),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _campo("Digite o 1º valor", x1Controller),
          _campo("Digite o 2º valor", x2Controller),
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
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.purple)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.purple, fontSize: 25.0),
      controller: objController,
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: _calcularMultiplicacao,
          child: Text("Calcula",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.purple,
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
