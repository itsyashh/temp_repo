// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:module_two/modules/screens/homeScreen.dart';
import 'package:module_two/modules/widgets/textfield.dart';

import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Demo"),
          centerTitle: true,
          backgroundColor: Colors.green.shade300,
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/login.png',
                  height: 300,
                )),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const TextFieldWidget("Email"),
                  const TextFieldWidget(
                    "Password",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade300,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 18),
                            textStyle: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                  Center(
                    child: FlatButton(
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
