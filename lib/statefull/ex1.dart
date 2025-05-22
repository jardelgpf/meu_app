import 'package:flutter/material.dart';

class LojaAbertaFechada extends StatefulWidget {
  @override
  State<LojaAbertaFechada> createState() => _LojaAbertaFechadaState();
}

class _LojaAbertaFechadaState extends State<LojaAbertaFechada> {
  bool aberta = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Status da Loja')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              title: Text(aberta ? 'Loja Aberta' : 'Loja Fechada'),
              value: aberta,
              onChanged: (bool valor) {
                setState(() {
                  aberta = valor;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              aberta ? 'A loja está aberta' : 'A loja está fechada',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}