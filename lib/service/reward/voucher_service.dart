import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VoucherService {
  Future<List> getVoucher() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final baseUrl = '{{BASE_URL}}'; // Ganti dengan base URL yang sesuai

    try {
      final response = await Dio().get(
        '$baseUrl/vouchers/',
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List voucher = (response.data['data'] as List)
          .map((voucher) => VoucherModels.fromJson(voucher))
          .toList();

      return voucher;

      
    } on DioError {
      rethrow;
    }
  }
}
