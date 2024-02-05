import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';
import 'package:uploadimage/modules/forgot_password/controller/forgot_pass_controller.dart';
import 'package:uploadimage/modules/login/controller/login_controller.dart';
import 'package:uploadimage/modules/signup/controller/signup_controller.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(create: (context) => SignUpController()),
 ChangeNotifierProvider(create: (context) =>  LoginController()),
 ChangeNotifierProvider(create: (context) =>  AmountScreenController()),
ChangeNotifierProvider(create: (context) => ForgotPassController())
 
];
