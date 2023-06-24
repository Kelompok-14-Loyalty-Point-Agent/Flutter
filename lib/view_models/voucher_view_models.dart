import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:flutter/material.dart';

import '../service/reward/voucher_service.dart';

class VoucherViewModel extends ChangeNotifier {
  final VoucherService _voucherService = VoucherService();
  List<Data> _vouchers = [];
  bool _isLoading = false;
  String _errorMessage = '';

  List<Data> get vouchers => _vouchers;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  Future<void> fetchVouchers(int id) async {
    try {
      _isLoading = true;
      notifyListeners();

      _vouchers = await _voucherService.getVoucher(id);
      _isLoading = false;
      notifyListeners();
    } catch (error) {
      _isLoading = false;
      _errorMessage = 'Failed to fetch vouchers: $error';
      notifyListeners();
    }
  }
}
