import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class VoucherService {
  Future<List<VoucherData>> getVoucher() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        ('$baseUrl/vouchers'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<VoucherData> vouchers = (response.data['data'] as List)
          .map((voucher) => VoucherData.fromMap(voucher))
          .toList();

      return vouchers;
    } on DioError {
      rethrow;
    }
  }
}
