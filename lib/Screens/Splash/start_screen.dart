import 'package:fairplay_fantasy/Screens/login/login_screen.dart';
import 'package:fairplay_fantasy/constants/constant.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          repeat: ImageRepeat.noRepeat,
          image: AssetImage("assets/images/SplashScreens/first_screen.png"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 10,
              right: 10,
            ),
            child: SizedBox(
              width: double.infinity,
              height: 35,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: fantasyPriparyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
