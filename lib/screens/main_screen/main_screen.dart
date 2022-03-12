import 'package:bank_of_america/screens/shared_widgets/background.dart';
import 'package:flutter/material.dart';

import '../shared_widgets/appBar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            BackgroundImage(),
            SingleChildScrollView(
              child: Column(
                children: [
                  SafeArea(
                    child: AppBarAll(
                      titleAppBar: "DASHBOARD",
                    ),
                  ),
                  //     child: AppBar(
                  //   centerTitle: true,
                  //   title: const Text(
                  //     "DASHBOARD",
                  //     style: TextStyle(fontSize: 24, color: Colors.white),
                  //   ),
                  // )),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 80, left: 16.0, right: 16),
                            child: Container(
                              height: 130,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
