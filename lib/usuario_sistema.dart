import 'package:flutter/cupertino.dart';

class UsuarioSistema with ChangeNotifier {
  String nome;
  String senha;
  
  UsuarioSistema({
    required this.nome,
    required this.senha,
  });

}
