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

  Future<int?> getVoucherCost(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        ('$baseUrl/vouchers/$id'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final cost = response.data["data"]["cost"] as int?;
      print(cost);

      return cost;
    } on DioError {
      rethrow;
    }
  }

  Future<String> getVoucherProduct(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        ('$baseUrl/vouchers/$id'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final product = response.data["data"]["product"] as String;

      return product;
    } on DioError {
      rethrow;
    }
  }
  // Future<int?> getRedeemData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final token = prefs.getString('token');

  //   var jwt = token;
  //   Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);

  //   int userId = decodedToken["id"];

  //   try {
  //     final response = await Dio().get(
  //       '$baseUrl/users/$userId',
  //       options: Options(
  //         headers: {
  //           "Authorization": "Bearer $token",
  //         },
  //       ),
  //     );
  //     print("ini service ${response.data}");

  //     final point = response.data["data"]["profile"]["Point"] as int?;

  //     return point ?? 0;
  //   } on DioError {
  //     rethrow;
  //   }
  // }
}
