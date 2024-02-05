import 'package:flutter/material.dart';
import 'package:uploadimage/global/constants/styles/text_styles/styles.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile(
      {super.key, required this.size, required this.title, required this.icon});
  final Size size;
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(leading: icon, title: KStyles().reg14(text: title)),
      ],
    );
  }
}
