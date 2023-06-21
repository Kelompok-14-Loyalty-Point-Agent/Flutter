// import 'package:capstone_14/ui/credit_data_transaction/credit_data_screen.dart';
import 'package:capstone_14/service/stock/credit_stock_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../constant/provider_icon_constant.dart';

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

class UserData extends ChangeNotifier {
  ProviderIconModel? providerIcon;

  String phoneNumber = '';

  void setPhoneNumber(String value) {
    phoneNumber = value;
    providerIcon = providerIconModel(value);
    notifyListeners();
  }
}

class CreditDataViewModel extends ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  final TextEditingController phoneNumberController = TextEditingController();
  // final CreditDataProvider creditDataProvider = CreditDataProvider();
  String phoneNumber = '';
  ProviderIconModel? providerIcons;
  ProviderIconModel? data;

  List hasilData = [];
  List hasilData2 = [];

  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  ProviderIconModel? getProviderData(String phoneNumber) {
    if (phoneNumber.length >= 3) {
      if (phoneNumber.substring(2, 3) == "3" && phoneNumber.substring(3, 4) == "1" ||
          phoneNumber.substring(2, 3) == "3" &&
              phoneNumber.substring(3, 4) == "2" ||
          phoneNumber.substring(2, 3) == "3" &&
              phoneNumber.substring(3, 4) == "3" ||
          phoneNumber.substring(2, 3) == "3" &&
              phoneNumber.substring(3, 4) == "8") {
        return providerIcons = ProviderIconModel(
          idData: 9,
          idCredit: 10,
          namaIcon: Image.asset(
            "assets/icons/provider_axis_icon.png",
            scale: 4,
          ),
        );
      } else if (phoneNumber.substring(2, 3) == "1" && phoneNumber.substring(3, 4) == "7" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "8" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "9" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(2, 3) == "9" ||
          phoneNumber.substring(2, 3) == "7" &&
              phoneNumber.substring(3, 4) == "7" ||
          phoneNumber.substring(2, 3) == "7" &&
              phoneNumber.substring(3, 4) == "8") {
        return providerIcons = ProviderIconModel(
          idData: 3,
          idCredit: 4,
          namaIcon: Image.asset(
            "assets/icons/provider_xl_icon.png",
            scale: 4.5,
          ),
        );
      } else if (phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "4" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "5" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "6" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "5" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "6" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "7" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "8") {
        return providerIcons = ProviderIconModel(
          idData: 7,
          idCredit: 8,
          namaIcon: Image.asset(
            "assets/icons/provider_indosat_icon.png",
            scale: 3,
          ),
        );
      } else if (phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "1" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "2" ||
          phoneNumber.substring(2, 3) == "1" &&
              phoneNumber.substring(3, 4) == "3" ||
          phoneNumber.substring(2, 3) == "2" &&
              phoneNumber.substring(3, 4) == "1" ||
          phoneNumber.substring(2, 3) == "2" &&
              phoneNumber.substring(3, 4) == "2" ||
          phoneNumber.substring(2, 3) == "2" &&
              phoneNumber.substring(3, 4) == "3" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "1" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "2" ||
          phoneNumber.substring(2, 3) == "5" &&
              phoneNumber.substring(3, 4) == "3") {
        return providerIcons = ProviderIconModel(
          idData: 1,
          idCredit: 2,
          namaIcon: Image.asset(
            "assets/icons/provider_tsel_icon.png",
            scale: 2.5,
          ),
        );
      } else if (phoneNumber.substring(2, 3) == "9" &&
              phoneNumber.substring(3, 4) == "5" ||
          phoneNumber.substring(2, 3) == "9" &&
              phoneNumber.substring(3, 4) == "6" ||
          phoneNumber.substring(2, 3) == "9" &&
              phoneNumber.substring(3, 4) == "7" ||
          phoneNumber.substring(2, 3) == "9" &&
              phoneNumber.substring(3, 4) == "8" ||
          phoneNumber.substring(2, 3) == "9" &&
              phoneNumber.substring(3, 4) == "9") {
        return providerIcons = ProviderIconModel(
          idData: 11,
          idCredit: 12,
          namaIcon: Image.asset(
            "assets/icons/provider_tri_icon.png",
            scale: 4,
          ),
        );
      } else if (phoneNumber.substring(2, 3) == "8" &&
              phoneNumber.substring(2, 3) == "1" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "2" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "3" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "4" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "5" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "6" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "7" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "8" ||
          phoneNumber.substring(2, 3) == "8" && phoneNumber.substring(3, 4) == "9") {
        return providerIcons = ProviderIconModel(
          idData: 5,
          idCredit: 6,
          namaIcon: Image.asset(
            "assets/icons/provider_smartfren_icon.png",
            scale: 2,
          ),
        );
      }
    } else if (phoneNumberController.text.isEmpty) {
      phoneNumberController.clear();
      notifyListeners();
    }
  }

  Future<void> getData(String value) async {
    data = getProviderData(value);
    print(data?.idCredit);
    print(data?.idData);
    print(data?.namaIcon);
    if (data != null) {
      hasilData = await CreditStockService().getCreditStock(data!.idCredit!);
      hasilData2 = await CreditStockService().getCreditStock(data!.idData!);
      print(hasilData);
    } else {
      hasilData.clear();
    }
    notifyListeners();
  }
}
