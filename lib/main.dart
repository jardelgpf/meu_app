import 'package:flutter/material.dart';
import 'package:meu_app/Contador.dart';
import 'package:meu_app/User.dart';
import 'package:meu_app/inherited/UserInfos.dart';
import 'package:meu_app/statefull/Botao.dart';
import 'package:meu_app/statefull/DarkMode.dart';
import 'package:meu_app/statefull/RandomNumber.dart';
import 'package:meu_app/statefull/SemEstado.dart';
import 'package:meu_app/statefull/ex1.dart';

/*  void main() {
 runApp(Container(
  child:  Text(
    'Bem vindo ao Flutter!',
    textDirection: TextDirection.ltr,
    style: TextStyle(color: Colors.lime, fontSize: 30.0),
  ),
 ));
}
  */

/**
 * NO FLUTTER TEMOS 3 TIPOS DE ESTADOS DE APLICAÇÃO
 * STATELESS (ESTADO IMUTAVEL)
 * A UI NUNCA MUDA APOS SER CONSTRUIDA
 * E USADO PARA COMPONENTES ESTATICOS COMO ICONES, TEXTOS FIXOS E ETC.
 * 
 * STATEFUL (ESTADO LOCAL)
 * A UI MUDA QUANDO O ESTADO INTERNO MUDA
 * É USADO EM WIDGETS QUE TEM INTERAÇÃO COM O USUÁRIO, COM ENTRADAS
 * DE TEXTOS, CARREGAMENTO DE DADOS E ANIMAÇÕES E ETC.
 * 
 * INHERITED (ESTADO HERDADO)
 * COMPARTILHA DADOS DESCENDENTES NA ARVORE DE WIDGETS
 * ÚTIL PARA DADOS GLOBAIS LEVES COMO TEMAS, IDIOMAS E ETC.
 */

void main() {
 // runApp(SemEstado());
 /* runApp(MaterialApp(
  home:Center(
  child: Botao(),
 ),
 ));
  */
/* 
  runApp(User());
 } */

/* runApp(MaterialApp(
  home: Contador(),
));
 */

//runApp(DarkMode());
//runApp(RandomNumber());

 /* runApp(MaterialApp(
    home: LojaAbertaFechada(),
  
  )); */

  runApp(Userinfos());



}