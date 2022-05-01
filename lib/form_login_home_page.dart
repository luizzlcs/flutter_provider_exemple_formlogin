import 'dart:ui';

import 'package:flutter/material.dart';

class FormLoginHomePage extends StatelessWidget {
  const FormLoginHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                autofocus: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.people_alt_rounded),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  label: Text('Usuário'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  label: Text('Senha'),
                ),
              ),
            ),
            FloatingActionButton.extended(
                backgroundColor: Colors.black26,
                focusColor: Colors.blue,
                hoverColor: Colors.blue,
                foregroundColor: Colors.amberAccent,
                icon: Icon(Icons.home),
                onPressed: () {},
                label: Text('Acessar'))
          ],
        ),
      ),
    );
  }
}
