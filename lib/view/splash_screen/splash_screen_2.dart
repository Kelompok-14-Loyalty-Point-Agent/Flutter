import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  static const routeName = '/splashScreen2';
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFFFFFFFF),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 146, 50, 29),
                  child: Image.asset(
                    "assets/images/Add-to-Cart-amico.png",
                    width: 260,
                    height: 260,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(43, 0, 43, 30),
                child: Text(
                  "The easy way to make a purchase",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xFF1D1D1D),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(63, 0, 63, 61),
                child: Text(
                  "Feel the convenience of transactions and purchases made on our application!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xFF008284),
                    fontSize: 14,
                  ),
                ),
              ),
              ButtonCustome(
                onPressed: () {
                  Navigator.pushNamed(context, '/splashScreen3');
                },
                width: 274,
                backgroundColour: const Color(0xFF030F51),
                title: "Next",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/splashScreen3');
                },
                child: const Text(
                  "Skip",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Color(0xFF1D1D1D),
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 65),
                child: DotsIndicator(
                  dotsCount: 3,
                  position: 1,
                  decorator: DotsDecorator(
                    activeColor: const Color(0xFF008284),
                    size: const Size.square(9.0),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
