import 'package:bank_of_america/screens/login_finger/login_finger_screen.dart';
import 'package:bank_of_america/screens/login_manually/login_manually_screen.dart';
import 'package:flutter/material.dart';

import '../screens/shared_widgets/background.dart';
import '../screens/shared_widgets/button.dart';

class SplashScreen extends StatelessWidget {
  Widget context = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Center(child: Image.asset("assets/Logo.png")),
                const SizedBox(
                  height: 100,
                ),
                CustomButton(
                  buttonBackgroundColor: Colors.white,
                  title: "Sign in with Fingerprint",
                  colorTitle: const Color(0xff156FB2),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginFinger()),
                    );
                  },
                ),
                CustomButton(
                  buttonBackgroundColor: const Color(0xff2189BC),
                  title: "Sign in manually",
                  colorTitle: Colors.white,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginManually()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
