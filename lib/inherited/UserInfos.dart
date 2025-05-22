import 'package:flutter/material.dart';
import 'package:meu_app/inherited/UserData.dart';

class Userinfos extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Userdata(
      username: 'jardel',
      child: Scaffold(
        appBar: AppBar(title: Text('perfil de usuario'),),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }

}

class WelcomeMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username = Userdata.of(context).username;
    return Text('Bem vindo, $username', style: TextStyle(fontSize: 24),);
  }
}
