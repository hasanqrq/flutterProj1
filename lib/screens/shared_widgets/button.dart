import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color buttonBackgroundColor;
  String title;
  Color colorTitle;
  VoidCallback onTap;

  CustomButton(
      {Key? key,
      required this.buttonBackgroundColor,
      required this.title,
      required this.colorTitle,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 16.0, left: 30, right: 30, bottom: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: buttonBackgroundColor.withOpacity(0.7),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(),
              Text(
                title,
                style: TextStyle(color: colorTitle, fontSize: 16),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: colorTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
