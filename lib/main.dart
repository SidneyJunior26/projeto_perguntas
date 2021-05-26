import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

main() => runApp(new PertuntaApp());

class PerguntaAppState extends State<PertuntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['Preto', 'Branco', 'Verde', 'Vermelho']
    },
    {
      'texto': 'Qual é seu animal favorito?',
      'respostas': ['Gato', 'Cachorro', 'Coelho', 'Passarinho'],
    },
    {
      'texto': 'Qual é sua marca de carro favorita?',
      'respostas': ['BMW', 'Mercedes', 'Audi', 'Porsche'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                onAnswer: _responder,
              )
            : Restultado(_reiniciarQuestionario),
      ),
    );
  }
}

class PertuntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
