import 'package:flutter/material.dart';

main () => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget{
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita?',
      'Qual é o seu animal favorita?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget> [
            Text(perguntas[0]),
            TextButton(
              onPressed: null,
              child: Text('Resposta 1')
            ),
            TextButton(
              onPressed: null,
              child: Text('Resposta 2')
            ),
            TextButton(
              onPressed: null,
              child: Text('Resposta 3')
            )
          ]
        )
      ),
    );
  }
}