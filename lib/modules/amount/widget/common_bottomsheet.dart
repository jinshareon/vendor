import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:uploadimage/modules/amount/controller/amount_screen_controller.dart';
import 'package:uploadimage/modules/amount/widget/common_listtile.dart';

class ImageOptionBottomSheet extends StatelessWidget {
  const ImageOptionBottomSheet({
    super.key,
    required this.size,
  
  });
  final Size size;
  
  @override
  Widget build(BuildContext context) {
    return Consumer<AmountScreenController>(builder: (context, amountCtrl, _) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context).pop();
                    amountCtrl.pickImageFromCamera(context);
                  },
                  child: CommonListTile(
                      size: size,
                      title: "Choose Camera",
                      icon: const Icon(
                        Icons.camera,
                        color: kGrey,
                        size: 20,
                      )),
                ),
                // if (val == 2)
                GestureDetector(
                  onTap: () async {
                    Navigator.of(context).pop();
                    amountCtrl.pickImageFromGallery(context);
                  },
                  child: CommonListTile(
                      size: size,
                      title: "Choose From Gallery",
                      icon: const Icon(
                        Icons.insert_photo,
                        color: kGrey,
                        size: 20,
                      )),
                )
              ],
            ),
          )
        ],
      );
    });
  }
}
