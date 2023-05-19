import 'package:capstone_14/ui/splash_screen/splash_screen_1.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen_2.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen_3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen1(),
        routes: {
          SplashScreen1.routeName: (context) => const SplashScreen1(),
          SplashScreen2.routeName: (context) => const SplashScreen2(),
          SplashScreen3.routeName: (context) => const SplashScreen3(),
        });
  }
}
