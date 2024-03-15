import 'package:flutter/material.dart';
import 'package:test_screen/utils/app_text.dart';
import 'package:test_screen/utils/color.dart';

import 'icon_widget.dart';

class CustomContainer extends StatelessWidget {
  final Color childColor;
  final Color parentColor;
  final Color iconColor;
  final bool rightMargin;
  final double childHeight;
  final IconData customIcon;
  final String title;
  final String description;

  const CustomContainer({super.key,
    this.rightMargin = false,
    required this.title,
    required this.description,
    required this.customIcon,
    required this.parentColor,
    required this.childColor,
    required this.iconColor, required this.childHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:  EdgeInsets.symmetric(vertical: 15, horizontal: rightMargin == true ? 40 : 20),
      padding: EdgeInsets.only(top: 15,bottom: 15,left: 20, right: rightMargin == true ? 40 : 20 ),
      decoration: BoxDecoration(
        color: parentColor,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Row(
        children: [
          IconWidget(
            color: childColor,
            height: childHeight,
            iconColor: iconColor,
            customIcon: customIcon,
          ),
          const SizedBox(width: 30), // Add spacing between CircularContainer and Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: AppTextStyle.pageTitleStyle.copyWith(
                    color: AppColor.txtColor,
                    fontSize: 16
                  )
                ),
                Text(
                  description,
                    style: AppTextStyle.pageTitleStyle.copyWith(
                        color: AppColor.txtColor,
                        fontSize: 14
                    )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
