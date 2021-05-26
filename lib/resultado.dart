import 'package:flutter/material.dart';

class Restultado extends StatelessWidget {
  final void Function() reiniciarQuestionario;

  Restultado(this.reiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Parabéns! Você respondeu todas as perguntas.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        // ignore: deprecated_member_use
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
          textColor: Colors.blue,
          onPressed: reiniciarQuestionario,
        ),
      ],
    );
  }
}
