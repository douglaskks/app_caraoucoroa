import 'package:flutter/material.dart';

class jogo extends StatefulWidget {
  const jogo({super.key});

  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Image.asset("images/moeda_cara.png"),
            Image.asset("images/botao_voltar")
          ],
        ),
      ),
    );
  }
}
