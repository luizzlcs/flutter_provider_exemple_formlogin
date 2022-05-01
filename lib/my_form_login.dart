

import 'package:flutter/material.dart';

import 'form_login_home_page.dart';

class MyFormLogin extends StatelessWidget {
  const MyFormLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormLoginHomePage(),
    );
  }
}
