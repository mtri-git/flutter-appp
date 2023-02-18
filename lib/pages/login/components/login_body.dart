import 'package:flutter/material.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Center(
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Đăng nhập',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
			Image.asset('assets/images/login.jpg'),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Quên mật khẩu?'),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Đăng nhập'),
                  onPressed: () {
                    // if (nameController.text.isNotEmpty &&
                    //     passwordController.text.isNotEmpty) {
                    //   Navigator.pushNamed(context, '/home');
                    // }
                    Navigator.pushNamed(context, '/home');
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Chưa có tài khoản?',
                  style: TextStyle(fontSize: 13),
                ),
                TextButton(
                  child: const Text(
                    'Đăng ký',
                    style: TextStyle(fontSize: 13),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                )
              ],
            ),
          ],
        ));
  }
}
