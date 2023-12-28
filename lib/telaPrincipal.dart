import 'dart:math';
import 'package:flutter/material.dart';
import 'jogo.dart';

class telaPrincipal extends StatefulWidget {
  const telaPrincipal({Key? key});

  @override
  State<telaPrincipal> createState() => _telaPrincipalState();
}

class _telaPrincipalState extends State<telaPrincipal> {
  void _exibirResultado() {
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => jogo(valor: resultado)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(padding: EdgeInsets.only(top: 32)),
              GestureDetector(
                onTap: _exibirResultado,
                child: Image.asset("images/botao_jogar.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
