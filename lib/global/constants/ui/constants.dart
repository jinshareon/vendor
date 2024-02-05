
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uploadimage/global/constants/asset/asset_constants.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';

import '../../config/config.dart';



class UIConstants {
  //*---------------------------------------------------------------- ( Loader )
 

  //*---------------------------------------------------------------- ( Button )
  TextButton button(
      {required Widget child,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      MaterialStateProperty<Size?>? minimumSize,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      MaterialStateProperty<Color?> overlayColor =
          const MaterialStatePropertyAll(kBlue)}) {
    return TextButton(
        style: ButtonStyle(
            padding: padding,
            minimumSize: minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child:  child);
  }

  //*---------------------------------------------------------------- ( Back_Button )
  TextButton backButton(
      {required VoidCallback onPressed,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      required BuildContext context}) {
    return TextButton(
      style: ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: padding,
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: onPressed,
      child: svgIcon(
        ht: 18.h,
        wd: 23.w,
        color: kBlack,
        assetImage: backArrow,
      ),
    );
  }

  //*---------------------------------------------------------------- ( Svg_Icon )
  SizedBox svgIcon(
      {required double ht,
      required double wd,
      required String assetImage,
      required Color color}) {
    return SizedBox(
      height: ht,
      width: wd,
      child: SvgPicture.asset(
        assetImage,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      ),
    );
  }

  //*---------------------------------------------------------------- (Pin_Put_Theme)
  

//*---------------------------------------------------------------- (Billerex_Elevated_Button)
  ElevatedButton ecartButton(
      {required Widget child,
      bool apiCalling = false,
      Color color = kBlack,
      required void Function()? onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(size.width * 0.8, 42.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r))),
      child: child,
    );
  }

//*---------------------------------------------------------------- (Round_Button)
  TextButton roundedButton(
      {required Widget child,
      Color? bdrClr = kBlack,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      MaterialStateProperty<Size?>? minimumSize,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      MaterialStateProperty<Color?> overlayColor =
          const MaterialStatePropertyAll(kTrans)}) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            side: MaterialStatePropertyAll(BorderSide(color: bdrClr!)),
            padding: padding,
            minimumSize: MaterialStatePropertyAll(
              Size(size.width * 0.8, 42.h),
            ),
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: child);
  }

//*---------------------------------------------------------------- (Transparent_Button)
  TextButton transparentButton(
      {required Widget style,
      bool apiCalling = false,
      required void Function()? onPressed,
      MaterialTapTargetSize? tapTargetSize,
      MaterialStateProperty<Size?>? minimumSize,
      MaterialStateProperty<EdgeInsetsGeometry?>? padding,
      MaterialStateProperty<Color?> overlayColor =
          const MaterialStatePropertyAll(kTrans)}) {
    return TextButton(
        style: ButtonStyle(
            padding: padding,
            minimumSize: minimumSize,
            overlayColor: overlayColor,
            tapTargetSize: tapTargetSize),
        onPressed: onPressed,
        child: style);
  }
}
