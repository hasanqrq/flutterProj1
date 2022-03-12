import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginManuallyBloc {
  TextEditingController usernameField = TextEditingController();
  TextEditingController passwordField = TextEditingController();
  final storage = const FlutterSecureStorage();
  bool rememberMyIdChecked = true;
  bool userFingerPrintChecked = false;

  saveRememberID(String value) async {
    await storage.write(key: "rememberMyIdCheckBox", value: value);
  }

  Future<String> readMyRememberID() async {
    return await storage.read(key: "rememberMyIdCheckBox") ?? "";
  }

  vaildateFields() {
    if (usernameField.text.isEmpty || passwordField.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}
