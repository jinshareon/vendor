import 'package:flutter/material.dart';
import 'package:uploadimage/global/constants/styles/colors/colors.dart';
import 'package:lottie/lottie.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';
import 'package:uploadimage/modules/amount/view/amount_details_screen.dart';

class SuccessFullScreen extends StatefulWidget {
  const SuccessFullScreen({super.key});

  @override
  State<SuccessFullScreen> createState() => _SuccessFullScreenState();
}

class _SuccessFullScreenState extends State<SuccessFullScreen> {
  @override
  initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 2600), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AmountDetailsScreen()),
      );
    
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kLightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * 0.17,
            width: size.height * 0.4,
            child: Lottie.asset("assets/lotties/success.json",
                fit: BoxFit.cover, repeat: false),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          KStyles().med18(text: "Congratulations !"),
          SizedBox(
            height: size.height * 0.02,
          ),
          Center(
            child: KStyles().reg12(
              textAlign: TextAlign.center,
              text: "You have successfully Submitted",
              color: kGrey,
            ),
          )
        ],
      ),
    );
  }
}
