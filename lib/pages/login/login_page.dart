import 'package:flutter/material.dart';
import 'package:my_app/pages/login/components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      //   appBar: AppBar(title: const Text('Login')),
      body: LoginBody(),
    );
  }
}
