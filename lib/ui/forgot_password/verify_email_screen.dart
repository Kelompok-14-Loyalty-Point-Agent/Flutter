import 'package:capstone_14/ui/forgot_password/create_new_password_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../widgets/button_custome_widget.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
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
                  const Padding(
                    padding: EdgeInsets.only(top: 51),
                    child: Text(
                      'Verify Your Email',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 33.5,
                      backgroundColor: Color(0xffC8D6F7),
                      child: Image(
                        width: 44,
                        height: 44,
                        image: AssetImage('assets/images/verify-email.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: 212,
                      height: 37,
                      child: Text(
                        'Please enter the 4 digit code sent to your email address',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 26),
                    child: OtpTextField(
                      margin: const EdgeInsets.only(left: 4),
                      numberOfFields: 4,
                      borderColor: const Color(0xFF323643),
                      showFieldAsBox: true,
                      borderRadius: BorderRadius.circular(14),
                      fieldWidth: 50,
                      onCodeChanged: (String code) {},
                      onSubmit: (String verificationCode) {
                        print(verificationCode);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 32),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Resend code',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFB26801),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  ButtonCustome(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NewPasswordScreen(),
                        ), //
                      );
                    },
                    backgroundColour: const Color(0xFF030F51),
                    width: 234,
                    title: "verify",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            DotsIndicator(
              dotsCount: 3,
              position: 1,
              decorator: DotsDecorator(
                size: const Size.square(9.0),
                activeColor: const Color(0xFF008284),
                activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
