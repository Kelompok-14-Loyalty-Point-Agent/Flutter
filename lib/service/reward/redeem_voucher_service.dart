// ignore_for_file: use_build_context_synchronously

import 'package:capstone_14/constant/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RedeemVoucherService {
  Future<bool> postRedeemVoucher(
    BuildContext context, {
    required String phone,
    required int? voucherId,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      var jwt = token;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);

      int userId = decodedToken["id"];

      Map data = {
        "phone": phone,
        "user_id": userId,
        "voucher_id": voucherId,
      };

      final response = await Dio().post(
        ('$baseUrl/vouchers/redeem'),
        data: data,
        options: Options(
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 201) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Berhasil Membuat Transaksi',
            ),
          ),
        );
      }

      return true;
    } on DioError catch (e) {
      if (e.response?.statusCode == 500) {
        throw ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Poin anda tidak cukup!',
            ),
          ),
        );
      }

      print("test ${e.response?.data}");

      throw ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Terjadi Kesalahan!",
          ),
        ),
      );
    }
  }
}
