import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:flutter/foundation.dart';

import '../service/reward/voucher_service.dart';

class VoucherViewModel with ChangeNotifier {
  // final VoucherService _voucherService;
  static VoucherModels? vouchers; // Ubah properti voucher menjadi vouchers

  bool isLoading = false;


  Future<void> getVouchers() async {
    isLoading = true;
    notifyListeners();
    List<VoucherData> vouchersList = await VoucherService().getVoucher();
    vouchers = VoucherModels(
      status: "success",
      message: "Vouchers retrieved successfully",
      data: vouchersList,
    );
    isLoading = false;
    notifyListeners();
  }
}
