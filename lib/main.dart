import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_formlogin/usuario_sistema.dart';
import 'my_form_login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => UsuarioSistema(),
      child: const MyFormLogin(),
    ),
  );
}
