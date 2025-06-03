import 'package:flutter/material.dart';
/**
 * FORMATOS DE IMAGENS ACEITOS PELO FLUTTER
 * PGN, JPEG/JPG, GIF, WEBP, BMP, ICO, SVG, HEIF/HEIC
 * SGV - NÃO É NATIVO (PRECISA DE BIBLIOTECA)
 * HEIF/HEIC - NÃO É NATIVO (PRECISA DE BIBLIOTECA)
 */

class Imagem extends StatelessWidget {
  const Imagem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagem no app',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inserindo imagem'),
        ),
        body: Center(
          child: Image.asset('assets/images/complexo.jpg', width: 1000,),
        ),
      ),
    );
  }
}