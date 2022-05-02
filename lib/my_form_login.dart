import 'package:flutter/material.dart';
import 'package:flutter_provider_exemple_formlogin/login_page.dart';

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
      routes: {
        '/formlogin': (context) => const MyFormLogin(),
        '/loginpage': (context) => const LoginPage()
      },
      home: FormLoginHomePage(),
    );
  }
}
