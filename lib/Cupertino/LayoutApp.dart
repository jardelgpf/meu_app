import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Widgets de layout',
      home: MontandoTela(),
    );
  }
}

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<MontandoTela> createState() => _MontandoTelaState();
}

class _MontandoTelaState extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}