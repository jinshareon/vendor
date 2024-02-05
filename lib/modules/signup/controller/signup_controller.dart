import 'package:flutter/material.dart';

class SignUpController with ChangeNotifier {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController pinCtrl = TextEditingController();
  TextEditingController confirmpinCtrl = TextEditingController();
  FocusNode phoneFocus = FocusNode();
  String newcountryCode = "";
  String newPhoneNumber = "";
  bool passwordVisible = false;
  bool confirmpassVisible = false;

  bool validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return true;
    } else {
      return false;
    }
  }

  onPhoneNumberChanged(countryCode, phoneNumber) {
    newcountryCode = countryCode;
    newPhoneNumber = phoneNumber;
    notifyListeners();
  }

  passwordvisibility() {
    passwordVisible = !passwordVisible;
    notifyListeners();
  }

  confirmpasswordVisibility() {
    confirmpassVisible = !confirmpassVisible;
    notifyListeners();
  }

  onSignInit() {
    phoneCtrl.clear();
    emailCtrl.clear();
    nameCtrl.clear();
    pinCtrl.clear();
    confirmpinCtrl.clear();
    passwordVisible = true;
    confirmpassVisible = true;
    notifyListeners();
  }
}
