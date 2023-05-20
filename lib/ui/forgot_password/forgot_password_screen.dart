import 'package:capstone_14/ui/forgot_password/verify_email_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../widgets/button_custome_widget.dart';

class ForgotPasswordscreen extends StatefulWidget {
  const ForgotPasswordscreen({super.key});

  @override
  State<ForgotPasswordscreen> createState() => _ForgotPasswordscreenState();
}

class _ForgotPasswordscreenState extends State<ForgotPasswordscreen> {
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
                      'Forgot Password',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'expletus_sans'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 33.5,
                    backgroundColor: Color(0xffC8D6F7),
                    child: Image(
                      width: 44,
                      height: 44,
                      image: AssetImage('assets/images/forgot-password.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(
                    width: 212,
                    height: 37,
                    child: Text(
                      'Please Enter Your Email Address to Receive a Verification Number',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        fontFamily: 'PT Sans',
                        color: Color(0xff008284),
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email Address',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        width: 234,
                        height: 36,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Email',
                            hintStyle: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 41),
                  ButtonCustome(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerifyEmailScreen(),
                        ),
                      );
                    },
                    backgroundColour: const Color(0xFF030F51),
                    width: 234,
                    title: "Send",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            DotsIndicator(
              dotsCount: 3,
              position: 0,
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
