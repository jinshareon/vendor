import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';

import 'package:uploadimage/modules/forgot_password/controller/forgot_pass_controller.dart';
import 'package:uploadimage/modules/forgot_password/widget/reset_pass_form.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotPassController>(builder: (context, forgotCtrl, _) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: kLightBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kLightBlue,
          title: KStyles().reg20(text: 'Reset Password'),
          centerTitle: true,
          leading: uiCon.backButton(
              onPressed: () {
                Navigator.pop(context);
              },
              context: context),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              KDimensions().sHeight(ht: 150),
               ResetPassForm(formKey: _formKey,),
                   kHeight40,
                uiCon.ecartButton(
                      color: kBillBlack,
                      child: KStyles().med15(text: 'Reset', color: kWhite),
                      onPressed: () {
                     
                      }),
          
              ],
            ),
          ),
        ),
      );
    });
  }
}
