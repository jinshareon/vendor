import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:uploadimage/global/constants/asset/asset_constants.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';

import '../../../global/config/config.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      backgroundColor: kLightBlue,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 300.h),
                child: Center(
                  child: SizedBox(
                    width: size.width * 0.6,
                    height: size.height * 0.2,
                    child: Lottie.asset(startlottie, repeat: true),
                  ),
                ),
              ),
              KDimensions().sHeight(ht: 100.h),
             uiCon.button(child: KStyles().med20(text: 'Login'), onPressed:(){
               Navigator.pushNamed(
                            context,
                            'login',
                          );
             }),
              uiCon.button(child: KStyles().med20(text: 'SignUp'), onPressed:(){
                 Navigator.pushNamed(
                            context,
                            'signup',
                          );
              })
            ],
          ),
        ),
      ),
    );
  }
}
