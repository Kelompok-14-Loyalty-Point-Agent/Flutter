import 'dart:async';

import 'package:capstone_14/ui/splash_screen/splash_screen_1.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    //Untuk pengecekan nanti ganti disini
    //ini cuman hardcore codenya
    Timer(
      const Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const SplashScreen1()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(94, 305, 93, 240),
              child: Image.asset(
                "assets/images/logo-01.png",
                height: 190,
                width: 173,
              ),
            ),
            const Text(
              'TRAID Point',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF757373),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
