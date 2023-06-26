import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:capstone_14/service/reward/redeem_voucher_service.dart';
import 'package:flutter/foundation.dart';

class RedeemViewModel extends ChangeNotifier {
  VoucherData? voucherId;
  int? cost;
  String product = "test";

  Future<void> fetchCost() async {
    try {
      final int? fetchedCost =
          await RedeemVoucherService().getVoucherCost(voucherId!.id!);
      print(voucherId!.id!);
      cost = fetchedCost;
      print('test ${cost}');
      notifyListeners();
    } catch (e) {
      print('Failed to fetch point: $e');
    }
  }

  Future<void> fetchProduct() async {
    try {
      final String fetchedProduct =
          await RedeemVoucherService().getVoucherProduct(voucherId!.id!);
      print(voucherId!.id!);
      product = fetchedProduct;
      print(product);
      notifyListeners();
    } catch (e) {
      print('Failed to fetch point: $e');
    }
  }
}

// // import 'package:capstone_14/service/reward/redeem_voucher_service.dart';
// // import 'package:flutter/material.dart';

// // class RedeemVoucherViewModel extends ChangeNotifier {
// //   final RedeemVoucherService _redeemVoucherService = RedeemVoucherService();

// //   Future<bool> postRedeemVoucher({
// //     required BuildContext context,
// //     required String phone,
// //     required int voucherId,
// //     required String paymentMethod,
// //     required int price,
// //     required double point,
// //     required String product,
// //   }) async {
// //     try {
// //       bool success = await _redeemVoucherService.postRedeemVoucher(
// //         context,
// //         phone: phone,
// //         voucherId: voucherId,
// //         paymentMethod: paymentMethod,
// //         price: price,
// //         point: point,
// //         product: product,
// //       );
// //       notifyListeners();

// //       return success;
// //     } catch (e) {
// //       // Tangani kesalahan dan kembalikan false jika terjadi kesalahan
// //       print('Terjadi kesalahan: $e');
// //       return false;
// //     }
// //   }
// // }
