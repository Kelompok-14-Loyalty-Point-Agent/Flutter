import 'package:capstone_14/ui/credit_data_transaction/credit_data_payment_screen.dart';
import 'package:capstone_14/ui/credit_data_transaction/credit_data_screen.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen_1.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen_2.dart';
import 'package:capstone_14/ui/splash_screen/splash_screen_3.dart';
import 'package:capstone_14/ui/bottom_navbar_page/bottom_navbar.dart';
import 'package:capstone_14/ui/voucher/voucher_screen.dart';
import 'package:capstone_14/widgets/credit_data_page_widget/data_button_widget.dart';
import 'package:capstone_14/widgets/transaction_success_screen.dart';
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
      //Ganti disini kalau mau coba screen
      home: const SplashScreen(),
      // home: const LoginScreen(),
      // home: const CreditDataScreen(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case SplashScreen1.routeName:
            return _buildFadeRoute(const SplashScreen1());
          case SplashScreen2.routeName:
            return _buildFadeRoute(const SplashScreen2());
          case SplashScreen3.routeName:
            return _buildFadeRoute(const SplashScreen3());
          case CreditDataScreen.routeName:
            return _buildFadeRoute(const CreditDataScreen());
          case TransactionSuccesScreen.routeName:
            return _buildFadeRoute(const TransactionSuccesScreen());
          case CreditDataPaymentScreen.routeName:
            final selectedTestModel = settings.arguments as TestModel;
            return _buildFadeRoute(
                CreditDataPaymentScreen(selectedTestModel: selectedTestModel));
          default:
            return null;
        }
      },
    );
  }

  PageRouteBuilder _buildFadeRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
