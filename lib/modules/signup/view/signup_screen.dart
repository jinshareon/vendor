import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/common_toast_message.dart';
import 'package:uploadimage/modules/signup/widgets/registration_form.dart';
import '../controller/signup_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SignUpController>(context, listen: false).onSignInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpController>(builder: (context, signCnt, _) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: kLightBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kLightBlue,
          title: KStyles().med22(text: 'SignUp'),
          centerTitle: true,
          leading: uiCon.backButton(
              onPressed: () {
                Navigator.pop(context);
              },
              context: context),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 70.h, left: 25.w, right: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                KStyles()
                    .reg23(text: 'Create your account !', color: kBillBlack),
                KDimensions().sHeight(ht: size.height * 0.03),
                RegistrationForm(formKey: _formKey),
                KDimensions().sHeight(ht: 45.h),
                uiCon.ecartButton(
                    color: kBillBlack,
                    child: KStyles().med15(text: 'Next', color: kWhite),
                    onPressed: () {
                      if (signCnt.emailCtrl.text.isNotEmpty &&
                          signCnt.validateEmail(signCnt.emailCtrl.text) ==
                              true) {

                                showCustomToast('Invalid Email, enter the email correctly');
                       
                      } else {
                        if (signCnt.nameCtrl.text.isNotEmpty &&
                            signCnt.emailCtrl.text.isNotEmpty &&
                            signCnt.phoneCtrl.text.length == 10) {
                          Navigator.pushNamed(context, 'password');
                        } else {
                          showCustomToast('Please fill all the details to continue with the registration');
                         
                        }
                      }
                    }),
                KDimensions().sHeight(ht: size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KStyles().reg15(
                        text: 'Already have an account ?', color: kBlack),
                    uiCon.button(
                        child: KStyles().reg15(text: 'Login', color: kBlack),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'login',
                          );
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
