
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uploadimage/modules/signup/controller/signup_controller.dart';


class PhoneTextfield extends StatelessWidget {
  const PhoneTextfield({
    required this.controller,
    required this.title,
    required this.focusNode,
    super.key,
  });

  final TextEditingController controller;
  final String title;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      final text = controller.text;
      final newText = text.replaceAll(
          RegExp(r'[^0-9]'), ''); 
      if (newText != text) {
        controller.value = controller.value.copyWith(
          text: newText,
          selection: TextSelection(
              baseOffset: newText.length, extentOffset: newText.length),
          composing: TextRange.empty,
        );
      }
    });

    return Consumer<SignUpController>(builder: (context, loginCtrl, _) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 67,
            child: IntlPhoneField(
              focusNode: focusNode,
             
              dropdownIcon: const Icon(
                Icons.arrow_drop_down,
                color: kBlack,
              ),
              pickerDialogStyle: PickerDialogStyle(
                searchFieldInputDecoration: InputDecoration(
                    isDense: true,
                    hintText: "search",
                    fillColor: kLightRed,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius:kRadius10,
                      borderSide: const BorderSide(
                     color: kTrans,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius:kRadius10,
                      borderSide: const BorderSide(
                      color: kTrans,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: kRadius10,
                      borderSide: const BorderSide(
                      color: kTrans,
                      ),
                    ),
                    suffixIcon: const Icon(
                      Icons.search,
                      color: kGrey,
                    )),
                searchFieldCursorColor: kGrey,
              
              ),
              autofocus: true,
              controller: controller,
              showCountryFlag: false,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelStyle:  TextStyle(fontFamily: 'ClashDisplay',fontSize: 12.sp,
                color: kGrey
              ),
                fillColor: kWhite,
                filled: true,
                labelText:
                 'Phone Number',
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 0.8,  color: kTrans,
                        ),
                    borderRadius: kRadius10),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      
                        width: 01,color: kTrans,
                        style: BorderStyle.solid),
                    borderRadius: kRadius10),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(
                       
                        width: 01,  color: kTrans,
                        style: BorderStyle.solid),
                    borderRadius: kRadius10),
              ),
              initialCountryCode: 'IN',
              onChanged: (phone) {
                loginCtrl.onPhoneNumberChanged(phone.countryCode, phone.number);
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      );
    });
  }
}
