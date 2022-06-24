import 'package:fairplay_fantasy/Screens/login/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:fairplay_fantasy/constants/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            repeat: ImageRepeat.noRepeat,
            image: AssetImage("assets/images/Login-Screen-Background.jpg"),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                constraints:
                    const BoxConstraints(maxWidth: 400, maxHeight: 400),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: fantasyPriparyColor,
                    width: 2,
                  ),
                  color: Colors.black.withOpacity(0.2),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: LoginForm(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
