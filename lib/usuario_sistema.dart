import 'package:flutter/cupertino.dart';

class UsuarioSistema with ChangeNotifier {
  String? nome;
  String? senha;

  UsuarioSistema({
     this.nome,
     this.senha,
  });
}
