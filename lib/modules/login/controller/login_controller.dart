import 'package:flutter/material.dart';

class LoginController with ChangeNotifier {
  TextEditingController emailCtrl = TextEditingController();

  TextEditingController pinCtrl = TextEditingController();
  bool passwordVisible = false;
  onloginInit() {
    emailCtrl.clear();
    pinCtrl.clear();
    passwordVisible = true;
    notifyListeners();
  }

  passwordVisibility() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }
}
