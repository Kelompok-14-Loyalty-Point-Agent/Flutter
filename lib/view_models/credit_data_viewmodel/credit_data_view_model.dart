import 'package:flutter/foundation.dart';

class CreditDataProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

class PaymentMethodProvider with ChangeNotifier {
  bool isDropdownOpen = false;
  String selectedPaymentMethod = "Choose Payment";
  String selectedPaymentMethodImage = "";
  final List<String> _paymentMethodImages = [
    "assets/images/payment_bri.png",
    "assets/images/payment_bni.png",
    "assets/images/payment_gopay.png",
    "assets/images/payment_shopee.png",
  ];
  final List<String> _paymentMethods = [
    "BRI",
    "BNI",
    "Gopay",
    "Shopee",
  ];

  List<String> get paymentMethodImages => _paymentMethodImages;
  List<String> get paymentMethods => _paymentMethods;

  void selectPaymentMethod(String method) {
    int selectedIndex = paymentMethods.indexOf(method);
    selectedPaymentMethod = method;
    isDropdownOpen = false;
    selectedPaymentMethodImage = paymentMethodImages[selectedIndex];
    notifyListeners();
  }

  void toggleDropdown() {
    isDropdownOpen = !isDropdownOpen;
    notifyListeners();
  }
}
