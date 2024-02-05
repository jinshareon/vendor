
import 'package:flutter/material.dart';
import 'package:uploadimage/modules/amount/view/amount_details_screen.dart';
import 'package:uploadimage/modules/amount/view/amount_screen.dart';
import 'package:uploadimage/modules/amount/widget/success_screen.dart';
import 'package:uploadimage/modules/forgot_password/view/forgot_password_screen.dart';
import 'package:uploadimage/modules/forgot_password/view/reset_password_screen.dart';
import 'package:uploadimage/modules/login/view/login_screen.dart';
import 'package:uploadimage/modules/signup/view/password_screen.dart';
import 'package:uploadimage/modules/signup/view/signup_screen.dart';
import 'package:uploadimage/modules/startup/view/startup_screen.dart';

import '../../modules/splash/view/splash_screen.dart';



Map<String, Widget Function(BuildContext)> routes = {
  
  '/': (BuildContext context) => const SplashScreen(),
   'start': (BuildContext context) => const StartUpScreen(),
   'signup': (BuildContext context) => const SignUpScreen(),
   'password': (BuildContext context) => const PasswordScreen() ,
    'login': (BuildContext context) => const LoginScreen() ,
     'amount': (BuildContext context) => const AmountAddingScreen() ,
       'forgot': (BuildContext context) => const ForgotPasswordScreen(),
       'reset': (BuildContext context) => const ResetPasswordScreen(),
        'success': (BuildContext context) => const SuccessFullScreen(),
     'amountdetails': (BuildContext context) => const AmountDetailsScreen(),
    


 
};
