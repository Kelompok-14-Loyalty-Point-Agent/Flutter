import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class VoucherService {
  Future<List<Datum>> getVoucher() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    // final baseUrl = '{{BASE_URL}}';

    // var jwt = token;
    // Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);
    // int userId = decodedToken["id"];

    try {
      final response = await Dio().get(
        ('$baseUrl/vouchers'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<Datum> vouchers = (response.data['data'] as List)
          .map((voucher) => Datum.fromMap(voucher))
          .toList();

      return vouchers;
    } on DioError {
      rethrow;
    }
  }
}
