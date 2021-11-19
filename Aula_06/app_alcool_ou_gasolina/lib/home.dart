import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController alcoolController = new TextEditingController();
  TextEditingController gasolinaController = new TextEditingController();

  String infoResultado = "Informe os Valores!";

  void _calcular() {
    setState(() {
      double alcool = double.parse(alcoolController.text);
      double gasolina = double.parse(gasolinaController.text);

      double resultado = alcool / gasolina;

      if (resultado <= 0.7) {
        infoResultado = 'Indicado: Álcool!';
      } else {
        infoResultado = 'Indicado: Gasolina!';
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
      title: Text("Gasolina ou Alcool!"), //
      centerTitle: true,
      backgroundColor: Colors.yellow,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Qual o valor do Alcool?", alcoolController),
          _campo("Qual o valor da Gasolina?", gasolinaController),
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
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.yellow)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.yellow, fontSize: 25.0),
      controller: objController,
    );
  }

  _foto() {
    return Image.network(
      'https://i1.wp.com/veiculosnaweb.com.br/wp-content/uploads/2019/07/gasolina-alcool-min-1.jpg?fit=772%2C323&ssl=1',
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
          color: Colors.yellow,
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
