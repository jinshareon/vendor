import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/common_toast_message.dart';
import 'package:uploadimage/modules/signup/controller/signup_controller.dart';
import 'package:uploadimage/modules/signup/widgets/password_form.dart';

import '../../../global/constants/dimension/dimension.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
                        .reg23(text: 'Create your account !', color: kBlack),
                    KDimensions().sHeight(ht: size.height * 0.05),
                    PasswordForm(formKey: _formKey),
                    KDimensions().sHeight(ht: 70.h),
                    uiCon.ecartButton(
                        color: kBillBlack,
                        child: KStyles().med15(text: 'Register', color: kWhite),
                        onPressed: () {
                          if (signCnt.pinCtrl.text.isNotEmpty &&
                              signCnt.confirmpinCtrl.text.isNotEmpty) {
                            if (signCnt.pinCtrl.text ==
                                signCnt.confirmpinCtrl.text) {
                              Navigator.pushNamed(
                                context,
                                'amount',
                              );
                            } else {
                              showCustomToast('Password mismatch');
                             
                            }
                          } else {
                             showCustomToast('Please enter the field');
                          
                          }
                        })
                  ],
                )),
          ));
    });
  }
}
