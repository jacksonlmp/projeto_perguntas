import 'package:flutter/material.dart';

main () => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
              Text(perguntas[perguntaSelecionada]),
              TextButton(
                onPressed: responder,
                child: const Text('Resposta 1')
              ),
              TextButton(
                onPressed: responder,
                child: const Text('Resposta 2')
              ),
              TextButton(
                onPressed: responder,
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
  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}