import 'package:capstone_14/model/reward/voucher_models.dart';

import '../service/reward/voucher_service.dart';

class VoucherViewModel {
  final VoucherService _voucherService;
  static VoucherModels? vouchers; // Ubah properti voucher menjadi vouchers

  VoucherViewModel(this._voucherService);

  Future<void> getVouchers() async {
    try {
      List<VoucherData> vouchersList = await _voucherService.getVoucher();
      vouchers = VoucherModels(
        status: "success",
        message: "Vouchers retrieved successfully",
        data: vouchersList,
      );
    } catch (e) {
      vouchers = VoucherModels(
        status: "error",
        message: "Failed to retrieve vouchers",
        data: [],
      );
    }
  }
}
