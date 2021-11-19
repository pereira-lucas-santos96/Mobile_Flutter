import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String infoPessoas = "Números de Pessoas!";

  int c = 0;

  void _adicionarPessoa() {
    setState(() {
      c = c + 1;

      infoPessoas = "$c";
    });
  }

  void _retirarPessoa() {
    setState(() {
      c = c - 1;

      infoPessoas = "$c";
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
      title: Text("Controlador de Pessoas!"),
      centerTitle: true,
      backgroundColor: Colors.brown,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 0, 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _texto(infoPessoas),
          _botaoPositivo(),
          _botaoNegativo(),
        ],
      ),
    );
  }

  _botaoPositivo() {
    return Padding(
      padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _adicionarPessoa,
          child: Text("Chegada",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.orange,
        ),
      ),
    );
  }

  _botaoNegativo() {
    return Padding(
      padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _retirarPessoa,
          child: Text("Saída",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.orange,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(textoParaExibir,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.red, fontSize: 25.0));
  }
}
