import 'package:flutter/material.dart';

class AppBarAll extends StatelessWidget {
  String titleAppBar;
  AppBarAll({required this.titleAppBar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 6, child: Container()),
        Text(
          titleAppBar,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
        Expanded(flex: 3, child: Container()),
        IconButton(
          onPressed: () {},
          icon: Image.asset("assets/titlelist.png"),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    );
  }
}
