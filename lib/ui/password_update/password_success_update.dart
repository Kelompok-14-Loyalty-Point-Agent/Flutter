import 'package:capstone_14/ui/forgot_password/forgot_password_screen.dart';
import 'package:capstone_14/ui/forgot_password/verify_email_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

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
                  const SizedBox(height: 73.24),
                  Image.asset(
                    'assets/images/success.png',
                    width: 67.5,
                    height: 67.5,
                  ),
                  const SizedBox(height: 32.74),
                  const SizedBox(
                    width: 146,
                    height: 44,
                    child: Text(
                      'New Password Updated',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        fontFamily: 'PT Sans',
                        color: Color(0xff008284),
                      ),
                    ),
                  ),
                  const SizedBox(height: 34),
                  const SizedBox(
                    width: 212,
                    height: 37,
                    child: Text(
                      'Your new password has been update now! Let’s login to your acc!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'PT Sans',
                        color: Color(0xff030F51),
                      ),
                    ),
                  ),
                  const SizedBox(height: 54),
                  ButtonCustome(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordscreen(),
                        ),
                      );
                    },
                    backgroundColour: const Color(0xFF030F51),
                    width: 234,
                    title: "Go to Sign In",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
