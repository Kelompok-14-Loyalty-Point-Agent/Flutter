import 'package:capstone_14/widgets/button_custom_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  static const routeName = '/splashScreen1';
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 146, 50, 41),
                  child: Image.asset(
                    "assets/images/E-Wallet-amico.png",
                    width: 260,
                    height: 260,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(43, 0, 43, 41),
                  child: Text(
                    "Get point for your payment",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xFF1D1D1D),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 61),
                  child: Text(
                    "Get points from the transactions you make and exchange them for the vouchers we offer!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xFF008284),
                      fontSize: 14,
                    ),
                  ),
                ),
                ButtonCustom(
                  onPressed: () {
                    Navigator.pushNamed(context, '/splashScreen2');
                  },
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
                  padding: const EdgeInsets.only(top: 65, bottom: 42),
                  child: DotsIndicator(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
