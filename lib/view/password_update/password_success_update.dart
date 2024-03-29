import 'package:capstone_14/view/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/textstyle_constant.dart';
import '../../widgets/button_custome_widget.dart';

class PasswordSuccessScreen extends StatefulWidget {
  const PasswordSuccessScreen({super.key});

  @override
  State<PasswordSuccessScreen> createState() => _PasswordSuccessScreenState();
}

class _PasswordSuccessScreenState extends State<PasswordSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 433,
              width: 274,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 8,
                ),
              ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 73.24),
                    child: Image.asset(
                      'assets/images/success.png',
                      width: 67.5,
                      height: 67.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32.74),
                    child: SizedBox(
                      width: 146,
                      height: 55,
                      child: Text(
                        'New Password Update!',
                        textAlign: TextAlign.center,
                        style: TextStyleConst.heading3,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 34),
                    child: SizedBox(
                      width: 212,
                      height: 37,
                      child: Text(
                          'Your new password has been update now! Let’s login to your acc!',
                          textAlign: TextAlign.center,
                          style: TextStyleConst.description3WithColor(
                              const Color(0xff008284))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 48),
                    child: ButtonCustome(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      backgroundColour: const Color(0xFF030F51),
                      width: 234,
                      title: "Go to Sign In",
                      style: TextStyleConst.description2WithColor(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
