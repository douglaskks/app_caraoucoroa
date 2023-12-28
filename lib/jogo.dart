import 'package:flutter/material.dart';

class jogo extends StatefulWidget {
  const jogo({Key? key, required this.valor}) : super(key: key);

  final String valor;

  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem = "images/moeda_cara.png";

    if (widget.valor == "cara") {
      caminhoImagem = "images/moeda_cara.png";
    } else {
      caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(caminhoImagem),
            Padding(padding: EdgeInsets.only(top: 32)),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
