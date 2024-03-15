import 'package:flutter/material.dart';
import 'package:test_screen/utils/app_text.dart';
import 'package:test_screen/utils/color.dart';

class IconWidget extends StatelessWidget {
  final Color color;
  final double height;
  final String text;
  final IconData? customIcon;
  final Color iconColor;


  const IconWidget({super.key,
    required this.color,
    required this.height,
    this.text = "H",
    this.customIcon,  this.iconColor = AppColor.icon2Color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Center(
        child: customIcon != null
            ? Icon(customIcon, color: iconColor)
            : Text(
          text,
          style:AppTextStyle.pageTitleStyle.copyWith(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400
          ),
        ),
      ),
    );
  }
}
