import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/global/widgets/common_toast_message.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';
import 'package:uploadimage/modules/amount/widget/amount_screen_form.dart';
import 'package:uploadimage/modules/amount/widget/common_bottomsheet.dart';
import '../../signup/controller/signup_controller.dart';

class AmountAddingScreen extends StatefulWidget {
  const AmountAddingScreen({super.key});

  @override
  State<AmountAddingScreen> createState() => _AmountAddingScreenState();
}

class _AmountAddingScreenState extends State<AmountAddingScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SignUpController>(context, listen: false).onSignInit();
      Provider.of<AmountScreenController>(context, listen: false).onAddAmountInit();
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<AmountScreenController>(builder: (context, amountCtrl, _) {
      return Scaffold(
        backgroundColor: kLightBlue,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kLightBlue,
          title: KStyles().reg20(text: 'Add amount'),
          centerTitle: true,
          leading: uiCon.backButton(
              onPressed: () {
                Navigator.pop(context);
              },
              context: context),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                kHeight30,
                KStyles().med15(text: 'Choose Image *'),
                kHeight15,
                GestureDetector(
                  onTap: () {
                    amountCtrl.imgUrl !=  "" ?
                  const  SizedBox() :
                    showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r))),
                      backgroundColor: kWhite,
                      context: context,
                      builder: (context) {
                        return ImageOptionBottomSheet(
                          size: size,
                        );
                      },
                    );
                  },
                  child: Stack(
                    children: [Container(
                      width: 150.w,
                      height: 150.h,
                      decoration:amountCtrl.imgUrl != ""? BoxDecoration(image:DecorationImage(fit: BoxFit.cover,
                        image: FileImage(File(amountCtrl.imgUrl)),),
                          shape: BoxShape.rectangle,
                       ) :BoxDecoration(color:kGrey.withOpacity(0.1)),
                      child: amountCtrl.imgUrl == "" ?
                      Center(
                        child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12.r),
                                        topRight: Radius.circular(12.r))),
                                backgroundColor: kWhite,
                                context: context,
                                builder: (context) {
                                  return ImageOptionBottomSheet(
                                    size: size,
                                  );
                                },
                              );
                            },
                            icon: Icon(
                              Icons.add,
                              size: 30.sp,
                            )),
                      ) : const SizedBox()
                    ),
                    amountCtrl.imgUrl != "" ?
                    Positioned(top: 108.h,left:112.w,
                      child: IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12.r),
                                        topRight: Radius.circular(12.r))),
                                backgroundColor: kWhite,
                                context: context,
                                builder: (context) {
                                  return ImageOptionBottomSheet(
                                    size: size,
                                  );
                                },
                              );
                            },
                            icon: Icon(color:kWhite,
                              Icons.insert_photo,
                              size: 27.sp,
                            )),
                    ):const SizedBox()]
                  ),
                ),
                kHeight30,
                AmountScreenForm(formKey: _formKey),
                kHeight30,
                uiCon.ecartButton(
                    color: kBillBlack,
                    child: KStyles().med15(text: 'Submit', color: kWhite),
                    onPressed: () {
                      if (amountCtrl.nameCtrl.text.isNotEmpty &&
                          amountCtrl.amountRateCtrl.text.isNotEmpty && amountCtrl.imgUrl != "") {
                        Navigator.pushNamed(
                          context,
                          'success',
                        );
                      } else {
                        showCustomToast('Please fill mandatory fields');
                        
                      }
                    }),
              ],
            ),
          ),
        ),
      );
    });
  }
}
