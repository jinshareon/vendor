import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';


// ignore: must_be_immutable
class OTPPinField extends StatelessWidget {
  OTPPinField({
    super.key,
    this.onChanged,
    required this.controller,
    this.focusNode,
    required this.obscureText,
    this.onCompleted,
  });
  final TextEditingController controller;
  FocusNode? focusNode;
  final bool obscureText;
  Function(String)? onCompleted;
  Function(String)? onChanged;
  bool isClipboardActionInProgress = false;
  @override
  Widget build(BuildContext context) {
    return Pinput(
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      closeKeyboardWhenCompleted: false,
      autofocus: true,
      keyboardType: TextInputType.number,
      controller: controller,
      focusNode: focusNode,
      onSubmitted: (value) {
        focusNode?.requestFocus();
      },
      androidSmsAutofillMethod: AndroidSmsAutofillMethod.smsUserConsentApi,
      listenForMultipleSmsOnAndroid: true,
      defaultPinTheme: PinTheme(
        width: 56,
        height: 56,
        textStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(30, 60, 87, 1),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kWhite.withOpacity(0.4),
        ),
      ),
      hapticFeedbackType: HapticFeedbackType.lightImpact,
      onChanged: onChanged,
      focusedPinTheme: PinTheme(
        width: 56,
        height: 56,
     
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kWhite.withOpacity(0.4),
            ),
            color: kWhite),
      ),
      submittedPinTheme:  PinTheme(
        width: 56,
        height: 56,
       
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kWhite.withOpacity(0.4),
        ),
      ),
      errorPinTheme: PinTheme(
        width: 56,
        height: 56,
       
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: kWhite.withOpacity(0.4),
            ),
            color: kWhite),
      ),
      obscureText: obscureText,
    );
  }
}
