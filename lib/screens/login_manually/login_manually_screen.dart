import 'package:bank_of_america/screens/main_screen/main_screen.dart';
import 'package:bank_of_america/screens/shared_widgets/background.dart';
import 'package:bank_of_america/screens/shared_widgets/button.dart';
import 'package:flutter/material.dart';
import 'login_manually_bloc.dart';

class LoginManually extends StatefulWidget {
  LoginManually({Key? key}) : super(key: key);

  @override
  State<LoginManually> createState() => _LoginManuallyState();
}

class _LoginManuallyState extends State<LoginManually> {
  var bloc = LoginManuallyBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(children: [
          BackgroundImage(),
          SafeArea(
            child: Column(
              children: [
                BackgroundImage(),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/logotitle.png"),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                      child: myCard(
                    context,
                  )),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget myCard(BuildContext context) {
    return Container(
      height: 420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 7,
                  child: Container(),
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Color(0xff777879),
                    fontSize: 24,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/closeButton.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: bloc.usernameField,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  "PRO ID",
                  style: TextStyle(fontSize: 14, color: Color(0xff707273)),
                ),
                hintText: "Enter your bank ID",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              keyboardType: TextInputType.visiblePassword,
              controller: bloc.passwordField,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                label: Text(
                  "PASSWORD",
                  style: TextStyle(fontSize: 14, color: Color(0xff707273)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Checkbox(
                  value: bloc.rememberMyIdChecked,
                  onChanged: (value) {
                    bloc.rememberMyIdChecked = value!;
                    setState(() {});
                  },
                ),
                const Text(
                  "Remember my ID for future logins.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff95989A),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Checkbox(
                  value: bloc.userFingerPrintChecked,
                  onChanged: (value) {
                    bloc.userFingerPrintChecked = value!;
                    setState(() {});
                  },
                ),
                const Text(
                  "Use fingerprint recognition next time",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff95989A),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
              buttonBackgroundColor: const Color(0xff2189BC),
              title: "Sign In",
              colorTitle: Colors.white,
              onTap: () {
                if (bloc.vaildateFields()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                }
              }),
        ],
      ),
    );
  }
}
