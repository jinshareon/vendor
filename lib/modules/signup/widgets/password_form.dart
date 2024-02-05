import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/textfield.dart';
import 'package:uploadimage/modules/signup/controller/signup_controller.dart';

import '../../../global/constants/styles/colors/colors.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpController>(builder: (context, signCnt, _) {
      return Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            KStyles().med14(text: 'Password'),
            KDimensions().sHeight(ht: size.height * 0.01),
            //!---Name_Field
            TextFieldWidget(obscureText: signCnt.passwordVisible,
              borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              suffix: IconButton(
                icon: Icon(signCnt.passwordVisible 
                    ? Icons.visibility_off
                    : Icons.visibility),
                onPressed: () {
                  signCnt.passwordvisibility();
                },
              ),
              hintText: ' Password',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              textEditingController: signCnt.pinCtrl,
              textCapitalization: TextCapitalization.none,
            ),
            KDimensions().sHeight(ht: size.height * 0.015),
            //!---Phone_Field
            KStyles().med14(text: 'Confirm Password'),
            KDimensions().sHeight(ht: size.height * 0.01),
            //!---Confirm_Password_
            TextFieldWidget(
              obscureText: signCnt.confirmpassVisible,
              suffix: IconButton(
                icon: Icon(signCnt.confirmpassVisible 
                    ? Icons.visibility_off
                    : Icons.visibility),
                onPressed: () {
                  signCnt.confirmpasswordVisibility();
                },
              ),
              borderColor: kTrans,
              hintText: ' Confirm Password',
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              textEditingController: signCnt.confirmpinCtrl,
              textCapitalization: TextCapitalization.none,
            ),
          ]));
    });
  }
}
