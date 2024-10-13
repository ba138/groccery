import 'package:flutter/material.dart';
import 'package:groccery/res/colors.dart';
import 'package:groccery/res/widgets/custom_button.dart';
import 'package:groccery/res/widgets/custom_textfield.dart';
import 'package:groccery/res/widgets/vertical_spacing.dart';
import 'package:groccery/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const VerticalSpeacing(30),
            const Text(
              'Groccery',
              style: TextStyle(
                  fontFamily: 'CenturyGothic',
                  color: AppColor.fontColor,
                  fontWeight: FontWeight.w800,
                  fontSize: 30.0),
            ),
            const VerticalSpeacing(60),
            const TextFieldCustom(
              maxLines: 1,
              text: 'Email Address',
              keyboardType: TextInputType.emailAddress,
            ),
            const TextFieldCustom(
              maxLines: 1,
              text: 'Your Password',
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {},
                child: const Text("Forget Password"),
              ),
            ),
            const VerticalSpeacing(60),
            RoundedButton(
                title: "Login",
                onpress: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                    (route) => false,
                  );
                })
          ],
        ),
      )),
    );
  }
}
