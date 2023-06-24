import 'package:flutter/material.dart';

import '../model/reward/voucher_models.dart';
import '../service/reward/voucher_service.dart';

class VoucherViewModel extends ChangeNotifier {
  List<Data> voucher = [];
  bool isLoading = false;
  String? errorMessage;

 final VoucherService voucherService = VoucherService();

  Future<void> fetchVoucher() async {
    try{
      final List voucher = await voucherService.getVoucher();
    } catch (e) {
      errorMessage = e.toString();
    }
    notifyListeners();
    
  }
}
