import 'package:capstone_14/widgets/button_custome_widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class SplashScreen3 extends StatefulWidget {
  static const routeName = '/splashScreen3';
  const SplashScreen3({super.key});

  @override
  State<SplashScreen3> createState() => _SplashScreen3State();
}

class _SplashScreen3State extends State<SplashScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 147, 50, 29),
              child: Image.asset(
                "assets/images/Finance-leaders-amico.png",
                width: 260,
                height: 260,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(43, 0, 43, 50),
              child: Text(
                "Reedem for voucher",
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
              padding: EdgeInsets.fromLTRB(63, 0, 63, 79),
              child: Text(
                "You can reedem tpoints into vouchers which provide many benefits!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color(0xFF008284),
                  fontSize: 14,
                ),
              ),
            ),
            ButtonCustome(
              onPressed: () {},
              backgroundColour: const Color(0xFF030F51),
              width: 274,
              title: "Sign In",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Create a new account",
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
                position: 2,
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
    );
  }
}
