import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uploadimage/global/constants/dimension/dimension.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';

class AmountDetailsCard extends StatelessWidget {
  const AmountDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Column(
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
    );
  }
}
