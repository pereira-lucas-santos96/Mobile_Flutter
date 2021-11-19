import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.black
        ),
        home:  widgetHome(),
    );
  }
}

class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

@override
Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text("App Hello Everyone!!"),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.orange,
      child:  Center(
          child: Text("Hi, Guy!",
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.dashed,
          )),
      ),
    ),
  );
}
}

