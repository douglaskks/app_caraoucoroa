import 'package:app_caraoucoroa/jogo.dart';
import 'package:flutter/material.dart';

class telaPrincipal extends StatefulWidget {
  const telaPrincipal({Key? key});

  @override
  State<telaPrincipal> createState() => _telaPrincipalState();
}

class _telaPrincipalState extends State<telaPrincipal> {
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
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => jogo(),
                    )),
                child: Image.asset("images/botao_jogar.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
