import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/common_toast_message.dart';
import 'package:uploadimage/modules/login/controller/login_controller.dart';
import 'package:uploadimage/modules/login/widgets/loginform.dart';

import '../../../global/constants/dimension/dimension.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<LoginController>(context, listen: false).onloginInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginController>(builder: (context, logCnt, _) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: kLightBlue,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kLightBlue,
          title: KStyles().med22(text: 'Login'),
          centerTitle: true,
          leading: uiCon.backButton(
              onPressed: () {
                Navigator.pop(context);
              },
              context: context),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                KStyles().reg23(
                    text: 'Sign in to your account !', color: kBillBlack),
                KDimensions().sHeight(ht: size.height * 0.05),
                LoginForm(formKey: _formKey),
                KDimensions().sHeight(ht: size.height * 0.03),
                uiCon.button(
                    child: KStyles()
                        .reg15(text: 'ForgotPassword ?', color: kBlack),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'forgot',
                      );
                    }),
                uiCon.ecartButton(
                    color: kBillBlack,
                    child: KStyles().med15(text: 'Login', color: kWhite),
                    onPressed: () {
                      if (logCnt.emailCtrl.text.isNotEmpty &&
                          logCnt.pinCtrl.text.isNotEmpty) {
                        Navigator.pushNamed(
                          context,
                          'amount',
                        );
                      } else {
                         showCustomToast('Please enter the details');
                       
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KStyles()
                        .reg15(text: "Don't have an account ?", color: kBlack),
                    uiCon.button(
                        child: KStyles().reg15(text: 'SignUp', color: kBlack),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            'signup',
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
