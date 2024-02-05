import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/textfield.dart';
import 'package:uploadimage/modules/login/controller/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(builder: (context, logCnt, _) {
      return Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //!---Phone_Field
            KStyles().med14(text: 'Email'),
            KDimensions().sHeight(ht: size.height * 0.01),
            TextFieldWidget(
              borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              hintText: 'Email',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.emailAddress,
              textEditingController: logCnt.emailCtrl,
              textCapitalization: TextCapitalization.none,
            ),
            KDimensions().sHeight(ht: size.height * 0.02),
            KStyles().med14(text: 'Password'),
            KDimensions().sHeight(ht: size.height * 0.01),
            TextFieldWidget(
              obscureText: logCnt.passwordVisible,
              suffix: IconButton(
                  onPressed: () {
                    logCnt.passwordVisibility();
                  },
                  icon: Icon(logCnt.passwordVisible
                      ? Icons.visibility_off
                    : Icons.visibility)),
              borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              hintText: ' Password',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              textEditingController: logCnt.pinCtrl,
              textCapitalization: TextCapitalization.none,
            ),
          ]));
    });
  }
}
