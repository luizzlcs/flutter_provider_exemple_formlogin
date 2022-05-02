import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'usuario_sistema.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.account_circle, color: Colors.deepOrange, size: 72),
          Center(
            child: SizedBox(
              width: 280,
              height: 120,
              child: Card(
                elevation: 8,
                shadowColor: Colors.deepOrange,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Seja Bem vindo você logou com:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                        'Usuário: ${(context).select((UsuarioSistema u) => u.nome)}'),
                    Text(
                        'Senha: ${(context).select((UsuarioSistema u) => u.senha)}')
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18, left: 40, right: 40),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.deepOrange,
              icon: Icon(Icons.logout_outlined),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/formlogin');
              },
              label: Text('logout'),
            ),
          )
        ],
      ),
    );
  }
}
