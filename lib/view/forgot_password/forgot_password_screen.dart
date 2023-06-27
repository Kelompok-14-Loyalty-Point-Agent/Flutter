import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:capstone_14/view/forgot_password/verify_email_screen.dart';
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
      resizeToAvoidBottomInset : false,
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
                    padding: const EdgeInsets.only(
                      top: 51,
                    ),
                    child: Text(
                      'Forgot Password',
                      style: TextStyleConst.heading3,
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
                        image: AssetImage('assets/images/forgot-password.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: SizedBox(
                      width: 212,
                      height: 37,
                      child: Text(
                        'Please Enter Your Email Address to Receive a Verification Number',
                        textAlign: TextAlign.center,
                        style: TextStyleConst.description3WithColor(
                            const Color(0xFF008284)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5, bottom: 6),
                          child: Text(
                            'Email Address',
                            style:
                                TextStyleConst.heading4WithColor(Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 234,
                          height: 36,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email',
                              hintStyle: TextStyleConst.description3,
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    style: TextStyleConst.description2WithColor(
                      const Color(0xFFFFFFFF),
                    ),
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
