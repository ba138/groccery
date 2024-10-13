import 'package:flutter/material.dart';
import 'package:groccery/res/colors.dart';

class DrawerOptions extends StatelessWidget {
  const DrawerOptions(
      {super.key,
      required this.icon,
      required this.title,
      required this.onpress});
  final IconData icon;
  final String title;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20,
      ),
      child: InkWell(
        onTap: onpress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 16,
                  color: AppColor.fontColor,
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'CenturyGothic',
                    fontWeight: FontWeight.w600,
                    color: AppColor.fontColor,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColor.primaryColor,
              size: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
