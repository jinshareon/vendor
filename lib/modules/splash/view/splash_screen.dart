import 'package:flutter/material.dart';

import 'package:uploadimage/global/constants/styles/colors/colors.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, 'start');
    });
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: kWhite,
     
    );
  }
}
