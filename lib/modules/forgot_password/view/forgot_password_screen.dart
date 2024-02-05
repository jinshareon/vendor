import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/common_otpfield.dart';
import 'package:uploadimage/modules/forgot_password/controller/forgot_pass_controller.dart';


class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
    // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<ForgotPassController>(builder: (context, forgotCtrl, _) {
    return Scaffold(resizeToAvoidBottomInset: true,
      backgroundColor: kLightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kLightBlue,
        title: KStyles().reg20(text: 'Forgot Password'),
        centerTitle: true,
        leading: uiCon.backButton(
            onPressed: () {
              Navigator.pop(context);
            },
            context: context),
      ), body: Padding(
        padding: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KStyles().reg16(text: 'Enter the 4 Digit code that sent to your phone number', color: kBlack,textAlign: TextAlign.center), 
            //  ForgotPassForm(formKey: _formKey,),
             kHeight40,
             OTPPinField(controller: forgotCtrl.pinCtrl ,obscureText: false,),
              KDimensions().sHeight(ht: size.height * 0.03),
              uiCon.button(child: KStyles().reg17(text: 'Resent code', color: kBlack),  onPressed: (){}),
              KDimensions().sHeight(ht: size.height * 0.03),
              uiCon.ecartButton(
                  color: kBillBlack,
                  child: KStyles().med15(text: 'Next', color: kWhite),
                  onPressed: () {
                  Navigator.pushNamed(
                            context, 'reset',);
                  }),
          
            ],
          ),
        ),
      ),
      );
  });
  }
}