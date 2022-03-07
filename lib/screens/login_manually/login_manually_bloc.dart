import 'package:flutter/material.dart';

class LoginManuallyBloc {
  TextEditingController usernameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();

  bool rememberMyIdChecked = false;
  bool userFingerPrintChecked = false;

  bool vaildateFields() {
    if (usernameField.text.isEmpty || passwordField.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
