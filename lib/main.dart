import 'package:capstone_14/model/transaction/create_transaction_response_body.dart';
import 'package:capstone_14/view/credit_data_transaction/credit_data_payment_screen.dart';
import 'package:capstone_14/view/credit_data_transaction/credit_data_screen.dart';
import 'package:capstone_14/view_models/credit_data_viewmodel/credit_data_view_model.dart';
import 'package:capstone_14/view/splash_screen/splash_screen.dart';
import 'package:capstone_14/view/splash_screen/splash_screen_1.dart';
import 'package:capstone_14/view/splash_screen/splash_screen_2.dart';
import 'package:capstone_14/view/splash_screen/splash_screen_3.dart';
import 'package:capstone_14/view_models/history_transaction_viewmodel/history_transaction_view_model.dart';
import 'package:capstone_14/view_models/point_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PaymentMethodProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CreditDataViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => PointViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => HistoryTransactionViewModel(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Ganti disini kalau mau coba screen
      home: const SplashScreen(),
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

          case CreditDataPaymentScreen.routeName:
            final selectedStock = settings.arguments as CreateTransactionModel;
            return _buildFadeRoute(
                CreditDataPaymentScreen(selectedStock: selectedStock));
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
