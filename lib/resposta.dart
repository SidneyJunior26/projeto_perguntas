import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelect;

  Resposta(this.texto, this.onSelect);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(texto),
        onPressed: onSelect,
      ),
    );
  }
}
