import 'package:capstone_14/model/reward/voucher_models.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class VoucherService {
  Future<List<Data>> getVoucher(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    // final baseUrl = '{{BASE_URL}}';

    // var jwt = token;
    // Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);
    // int userId = decodedToken["id"];

    try {
      final response = await Dio().get(
        ('$baseUrl/vouchers/$id'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<Data> voucher = (response.data['data'] as List)
          .map((voucher) => Data.fromJson(voucher))
          .toList();

      return voucher;
    } on DioError {
      rethrow;
    }
  }
}
