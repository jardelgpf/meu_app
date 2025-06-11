import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String _status = 'aguardando...';
  bool _carregando = false;

  //sempre que trabalhar com tarefas assincronas no flutter use initState
  @override
  void initState(){
    super.initState();
  }


//simulacao de login
Future<bool> autenticar(String usuario, String senha)async{
  await Future.delayed(Duration(seconds: 2));
  return usuario == 'admin' && senha == 'admin';
}

void _fazerLogin()async{
setState(() {
  _carregando = true;
  _status = 'Processando...';
});


bool sucesso = await autenticar('admin', 'admin');


setState((){
  _carregando = false;
  _status = sucesso ? 'login bem sucedido' : 'falha no login';
});
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('login com future'),),
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(_carregando) CircularProgressIndicator(),
            SizedBox(height: 20,),
            Text(_status, style: TextStyle(fontSize: 18),),
            SizedBox(height: 40,),
            ElevatedButton(
              onPressed: _carregando ? null : _fazerLogin,
              child: Text('simular login')
              ),
          ],
        ),
      ),
    );
  }
}