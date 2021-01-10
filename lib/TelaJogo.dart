import 'package:cara_ou_coroa/TelaInicial.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TelaJogo extends StatefulWidget {

  int _valor;

  TelaJogo(this._valor);

  @override
  _TelaJogoState createState() => _TelaJogoState(this._valor);
}

class _TelaJogoState extends State<TelaJogo> {
  int _valor;
  _TelaJogoState(this._valor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffffcc80),
      backgroundColor: Color(0xff61BD8C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          if(_valor == 0)
            Image.asset("images/moeda_cara.png")
           else
             Image.asset("images/moeda_coroa.png"),
          Padding(
            padding: EdgeInsets.only(top: 32),
          ),
          GestureDetector(
            child:Image.asset("images/botao_voltar.png"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
