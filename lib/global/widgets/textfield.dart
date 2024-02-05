// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({
    Key? key,
    this.onTap,
    this.label,
    this.style,
    this.prefix,
    this.suffix,
    this.focusNode,
    this.maxLength,
    this.validator,
    this.onChanged,
    this.showCursor,
    this.textInputAction,
    required this.hintText,
    required this.readOnly,
    required this.boxWidth,
    required this.textAlign,
    required this.textColor,
    this.obscureText = false,
    required this.textEditingController,
    this.keyboardType = TextInputType.none,
    this.scrollPadding = const EdgeInsets.all(20.0),required this.borderColor,
    this.textCapitalization = TextCapitalization.none,
  }) : super(key: key);

  bool readOnly;
  Widget? label;
  Widget? prefix;
  Widget? suffix;
  int? maxLength;
  TextStyle? style;
  bool? obscureText;
  FocusNode? focusNode;
  final String hintText;
  final double boxWidth;
  final Color textColor;
  void Function()? onTap;
  bool? showCursor = true;
  final Color borderColor;
  EdgeInsets? scrollPadding;
  Function(String)? onChanged;
  final TextInputType keyboardType;
  TextInputAction? textInputAction;
  TextAlign textAlign = TextAlign.left;
  String? Function(String?)? validator;
  TextCapitalization textCapitalization;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxWidth,
      child: TextFormField(
        onTap: onTap,
        autofocus: true,
        cursorHeight: 20.h,
        readOnly: readOnly,
        cursorColor: kBlack,
        maxLength: maxLength,
        textAlign: textAlign,
        validator: validator,
        onChanged: onChanged,
        showCursor: showCursor,
        obscuringCharacter: '*',
        obscureText: obscureText!,
        keyboardType: keyboardType,
        scrollPadding: scrollPadding!,
        textInputAction: textInputAction,
        controller: textEditingController,
        enableInteractiveSelection: true,
        textCapitalization: textCapitalization,
        style: TextStyle(
            fontSize: 16.sp,
            color: textColor,
            fontWeight: FontWeight.w400,
            fontFamily: 'ClashDisplay'),
        decoration: InputDecoration(
          filled: true,
          label: label,
          prefix: prefix,
          suffix: suffix,
          counterText: '',
          fillColor: kWhite,
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 15.w, right: 10.w),
          hintStyle: TextStyle(
              color: kGrey,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'ClashDisplay'),
          enabledBorder: OutlineInputBorder(
            borderRadius: kRadius10,
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: kRadius10,
            borderSide:  BorderSide(
              color: borderColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: kRadius10,
            borderSide:  BorderSide(
              color: borderColor,
            ),
          ),
        ),
      ),
    );
  }
}
