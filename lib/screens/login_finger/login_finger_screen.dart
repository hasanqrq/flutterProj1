import 'package:bank_of_america/screens/shared_widgets/background.dart';
import 'package:bank_of_america/screens/shared_widgets/button.dart';
import 'package:bank_of_america/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginFinger extends StatelessWidget {
  const LoginFinger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          BackgroundImage(),
          Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                ),
                const Text(
                  "Start Using Your",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2189BC),
                  ),
                ),
                const Text(
                  "Fingerprint",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2189BC),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/fingerpring.png",
                ),
                const SizedBox(
                  height: 70,
                ),
                CustomButton(
                    buttonBackgroundColor:
                        const Color(0xff2189BC).withOpacity(0.9),
                    title: ("Not Now"),
                    colorTitle: Colors.white,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SplashScreen()),
                      );
                    }),
              ],
            ),
          )
        ],
      )),
    );
  }
}
