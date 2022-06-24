import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo/fantasy-logo.png",
          height: 60,
        ),
        Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Enter Your Name",
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
