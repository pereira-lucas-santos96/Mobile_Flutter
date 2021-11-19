import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);

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
        _texto('Informações Pessoais: \n'),
        _texto('Nome: Lucas Pereira Dos Santos'),
        _texto('Telefone: (13) 981.435.302'),
        _texto(
            'Sou estudante de Análise e Desenvolvimento de Sistemas, estudando para compreender melhor o mundo da tecnologia.'),
        _texto(
            ' Minha experiência inclui o desenvolvimento de pequenos projetos como Front-end e análise e interpretação de dados.'),
        _texto(
            ' Meus colegas me descreveriam como uma pessoa motivada, que mantém uma atitude positiva e proativa diante dos problemas.'),
        _texto(
            'Atualmente, estou buscando oportunidades que me permitam desenvolver e promover tecnologias que beneficiem meu desenvolvimento profissional. Os campos de interesse específicos incluem estagiar na área de tecnologia da informação, Analista de desenvolvimento Junior.'),
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
