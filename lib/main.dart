import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }
  
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
              Text(perguntas[_perguntaSelecionada]),
              TextButton(
                onPressed: _responder,
                child: const Text('Resposta 1')
              ),
              TextButton(
                onPressed: _responder,
                child: const Text('Resposta 2')
              ),
              TextButton(
                onPressed: _responder,
                child: const Text('Resposta 3')
              )
            ]
          )
        ),
      );
  }
}

class PerguntaApp extends StatefulWidget{
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}