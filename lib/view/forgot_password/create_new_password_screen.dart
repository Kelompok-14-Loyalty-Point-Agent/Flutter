import 'package:capstone_14/view/password_update/password_success_update.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../constant/textstyle_constant.dart';
import '../../widgets/button_custome_widget.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                    padding: const EdgeInsets.only(top: 26),
                    child: Text('Create New Password',
                        style: TextStyleConst.heading3),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(
                      radius: 33.5,
                      backgroundColor: Color(0xffC8D6F7),
                      child: Image(
                        width: 44,
                        height: 44,
                        image: AssetImage('assets/images/new-password.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 23),
                    child: SizedBox(
                      width: 212,
                      height: 37,
                      child: Text(
                        'Your new password must be different from previously password',
                        textAlign: TextAlign.center,
                        style: TextStyleConst.description3WithColor(
                            const Color(0xFF008284)),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, bottom: 5),
                        child: Text(
                          'Password',
                          style: TextStyleConst.description2,
                        ),
                      ),
                      SizedBox(
                        width: 234,
                        height: 36,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Your Password',
                            hintStyle: TextStyleConst.description3,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 5, bottom: 5),
                        child: Text(
                          'Confirm Password',
                          style: TextStyleConst.description2,
                        ),
                      ),
                      SizedBox(
                        width: 234,
                        height: 36,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Confirm Your Password',
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
                  const SizedBox(height: 31),
                  ButtonCustome(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PasswordSuccessScreen(),
                        ),
                      );
                    },
                    backgroundColour: const Color(0xFF030F51),
                    width: 234,
                    title: "Save",
                    style: TextStyleConst.description2WithColor(Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            DotsIndicator(
              dotsCount: 3,
              position: 2,
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
