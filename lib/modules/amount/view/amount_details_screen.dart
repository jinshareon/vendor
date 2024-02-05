import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/config/config.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';

class AmountDetailsScreen extends StatefulWidget {
  const AmountDetailsScreen({super.key});

  @override
  State<AmountDetailsScreen> createState() => _AmountDetailsScreenState();
}

class _AmountDetailsScreenState extends State<AmountDetailsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
       Provider.of<AmountScreenController>(context, listen: false).onAddAmountInit();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kLightBlue,
        title: KStyles().med20(text: 'Amount Details'),
        centerTitle: true,
        leading: uiCon.backButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            },
            context: context),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 60.h, bottom: 20.h),
        child: Container(
          width: double.infinity,
          height: 250.h,
          color: kGrey.withOpacity(0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kHeight10,
              Container(
                width: 150.w,
                height: 150.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/television.jpeg'))),
              ),
              kHeight10,
              KStyles().med17(text: 'Name :  Samsung', color: kBlack),
              kHeight10,
              KStyles().med17(text: 'Amount :  150000', color: kBlack),
            ],
          ),
        ),
      ),
    );
  }
}
