import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/textfield.dart';
import 'package:uploadimage/modules/forgot_password/controller/forgot_pass_controller.dart';

class ResetPassForm extends StatelessWidget {
  const ResetPassForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotPassController>(builder: (context, forgotCnt, _) {
      return Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //!---Phone_Field
            KStyles().med14(text: 'New Password'),
            KDimensions().sHeight(ht: size.height * 0.01),
            TextFieldWidget(
              borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              hintText: 'Password',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              textEditingController: forgotCnt.newpinCtrl,
              textCapitalization: TextCapitalization.none,
            ),
            KDimensions().sHeight(ht: size.height * 0.02),
             KStyles().med14(text: 'Confirm Password'),
            KDimensions().sHeight(ht: size.height * 0.01),
            TextFieldWidget(
              borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              hintText: 'Confirm Password',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.text,
              textEditingController: forgotCnt.confirmpinCtrl,
              textCapitalization: TextCapitalization.none,
            ),
            KDimensions().sHeight(ht: size.height * 0.02),
           
          ]));
    });
  }
}
