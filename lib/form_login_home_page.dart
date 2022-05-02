import 'dart:ui';

import 'package:flutter/material.dart';

class FormLoginHomePage extends StatelessWidget {
  const FormLoginHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String usuario = '';
    String senha = '';
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: TextFormField(
                onChanged: (text) {
                  print(text);
                  usuario = text;
                },
                autofocus: true,
                cursorColor: Colors.pink,
                cursorWidth: 5,
                cursorHeight: 30,
                maxLength: 20,
                obscuringCharacter: '@',
                decoration: const InputDecoration(
                  helperText: 'Digite o nome do usuário',
                  isDense: true,
                  prefixIcon: Icon(Icons.people_alt_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  label: Text('Usuário'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 30),
              child: TextFormField(
                onChanged: (text) {
                  print('Senha: $text');
                  senha = text;
                },
                obscuringCharacter: '❂',
                obscureText: true,
                decoration: const InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  label: Text('Senha'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
              child: FloatingActionButton.extended(
                backgroundColor: Colors.black26,
                focusColor: Colors.blue,
                hoverColor: Colors.blue,
                foregroundColor: Colors.amberAccent,
                icon: Icon(Icons.home),
                label: Text('Acessar'),
                onPressed: () {
                  print('''Usuário: $usuario''');
                  print('''Senha: $senha''');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
