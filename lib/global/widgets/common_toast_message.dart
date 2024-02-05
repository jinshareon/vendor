
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';


showCustomToast(String title) {
  Fluttertoast.showToast(backgroundColor: kBlue,textColor: kBlack,gravity: ToastGravity.TOP,
      msg: title);
}