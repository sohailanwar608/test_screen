import 'package:flutter/material.dart';
import 'package:test_screen/utils/color.dart';

import 'icon_widget.dart';

class ProfileActionWidget extends StatelessWidget {
  final Color childColor;
  final double childHeight;
  final Color iconColor;
  final IconData customIcon;
  final String title;
  final String description;

  const ProfileActionWidget({super.key,
    this.childColor = AppColor.homeSmallContColor,
     this.childHeight = 35,
    this.iconColor = AppColor.icon2Color,
    required this.title,
    required this.description,
    required this.customIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.homeContColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWidget(
                  color: childColor,
                  height: childHeight,
                  iconColor: iconColor,
                  customIcon: customIcon,
                ),

                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    border: Border.all(color:  const Color(0xff3b3c43), width: 2.0), // Change color as needed
                  ),
                  child: const Center(
                    child: Text(
                      'i',
                      style: TextStyle( fontSize: 15,color: Color(0xff3b3c43)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
