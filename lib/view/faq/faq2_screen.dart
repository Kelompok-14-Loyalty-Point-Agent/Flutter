import 'package:capstone_14/view/bottom_navbar_page/bottom_navbar.dart';
import 'package:capstone_14/view/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../constant/textstyle_constant.dart';
import '../../widgets/button_custome_widget.dart';

class Faq2Screen extends StatefulWidget {
  const Faq2Screen({super.key});

  @override
  State<Faq2Screen> createState() => _Faq2ScreenState();
}

class _Faq2ScreenState extends State<Faq2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff030F51),
        // shadowColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 10),
          child: Column(
            children: [
              Text(
                "FAQ",
                style: TextStyleConst.heading2,
              ),
              Padding(
                padding: EdgeInsets.only(top: 22),
                child: Text("What transaction can be made on TRADE Poin?",
                    style: TextStyleConst.description4),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 22),
                child: Container(
                  width: 296,
                  height: 144,
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 11, right: 40),
                child: Text(
                  "Note : You have to complete watching videos to earn tPoint.",
                  style: TextStyleConst.description4,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  "After watching the video above, you can fill out the survey form below",
                  style: TextStyleConst.description4,
                ),
              ),
              const SizedBox(height: 7),
              Text("link form", style: TextStyleConst.description4),
              const SizedBox(height: 40),
              ButtonCustome(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomNavBar(
                                currentIndex: 0,
                              )));
                },
                title: 'Done',
                backgroundColour: const Color(0xff030F51),
                width: 336,
                style: TextStyleConst.description3WithColor(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
