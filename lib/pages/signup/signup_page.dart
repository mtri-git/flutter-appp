import 'package:flutter/material.dart';
import 'package:my_app/pages/signup/components/signup_body.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Đăng ký')),
      body: const SignUpBody(),
    );
  }
}
