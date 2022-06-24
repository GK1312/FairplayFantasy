import 'package:fairplay_fantasy/Screens/login/components/login_form.dart';
import 'package:fairplay_fantasy/constants/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
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
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(
                  color: fantasyPriparyColor,
                  width: 2,
                ),
                color: Colors.black.withOpacity(0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/logo/fantasy-logo.png",
                      height: 80,
                    ),
                    const LoginForm()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
