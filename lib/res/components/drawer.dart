import 'package:flutter/material.dart';
import 'package:groccery/res/colors.dart';
import 'package:groccery/res/widgets/drawer_options.dart';
import 'package:groccery/res/widgets/vertical_spacing.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 120.0,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColor.primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColor.whiteColor,
                      size: 14,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Text(
                    'Groccery',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColor.whiteColor,
                    ),
                  )
                ],
              ),
            ),
          ),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.history,
            title: 'About Us',
            onpress: () {},
          ),
          const VerticalSpeacing(8),
          const Divider(),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.star_rate_rounded,
            title: 'FAQs',
            onpress: () {},
          ),
          const VerticalSpeacing(8),
          const Divider(),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.my_library_books_outlined,
            title: 'Terms & Conditions',
            onpress: () {},
          ),
          const VerticalSpeacing(8),
          const Divider(),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.help_outline,
            title: 'Help Center',
            onpress: () {},
          ),
          const VerticalSpeacing(8),
          const Divider(),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.phone,
            title: 'Contact Us',
            onpress: () {},
          ),
          const Divider(),
          const VerticalSpeacing(8),
          DrawerOptions(
            icon: Icons.logout_rounded,
            title: 'Logout',
            onpress: () async {},
          ),
          const VerticalSpeacing(8),
        ],
      ),
    );
  }
}
