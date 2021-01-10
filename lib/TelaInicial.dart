import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'TelaJogo.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  void _exibirResultado(){
    var  numero = Random().nextInt(2);
    Navigator.push(
        context, MaterialPageRoute(
          builder: (context) => TelaJogo(numero)
    )
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61BD8C),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: <Widget>[
         Image.asset("images/logo.png"),
         Padding(
           padding: EdgeInsets.only(top: 32),
         ),
         GestureDetector(
           child:Image.asset("images/botao_jogar.png"),
           onTap: (){
             _exibirResultado();
           },
         )
       ],
      ),
    );
  }
}
