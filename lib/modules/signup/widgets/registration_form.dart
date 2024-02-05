
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/textfield.dart';
import 'package:uploadimage/modules/signup/controller/signup_controller.dart';
import 'package:uploadimage/modules/signup/widgets/phone_textfield.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpController>(builder: (context, signCnt, _) {
      return Form(
          key: _formKey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            KStyles().med14(text:'Name'),
             KDimensions().sHeight(ht: size.height * 0.01),
            //!---Name_Field
            TextFieldWidget(borderColor: kTrans,
                hintText: ' Name',
                readOnly: false,
                textColor: kBlack,
                boxWidth: size.width,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.name,
                textEditingController: signCnt.nameCtrl,
                textCapitalization: TextCapitalization.words),
            KDimensions().sHeight(ht: size.height * 0.02),

            //!---Email Field
              KStyles().med14(text:'Email'),
               KDimensions().sHeight(ht: size.height * 0.01),
            TextFieldWidget(borderColor: kTrans,
              readOnly: false,
              textColor: kBlack,
              boxWidth: size.width,
              hintText: 'Email',
              textAlign: TextAlign.left,
              keyboardType: TextInputType.emailAddress,
              textEditingController: signCnt.emailCtrl,
              textCapitalization: TextCapitalization.none,
            ),
               KDimensions().sHeight(ht: size.height * 0.02),
                 KStyles().med14(text:'Phone'),
                  KDimensions().sHeight(ht: size.height * 0.01),
                    //!---Phone Field
           PhoneTextfield(controller:signCnt.phoneCtrl ,focusNode:signCnt.phoneFocus ,title: 'Phone',)
               
          ]));
    });
  }
}
