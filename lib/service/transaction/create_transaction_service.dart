// ignore_for_file: use_build_context_synchronously

import 'package:capstone_14/model/transaction/create_transaction_response_body.dart';
import 'package:capstone_14/widgets/transaction_success_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class CreateTransactionService {
  Future<bool> postTransaction(
    BuildContext context, {
    required String phone,
    required int stockDetailsId,
    required String paymentMethod,
    required int userId,
    required int price,
    required double point,
    required String product,
  }) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');

      var jwt = token;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);

      print(decodedToken["id"]);

      Map data = {
        "phone": phone,
        "stockDetailsId": stockDetailsId,
        "paymentMethod": TransactionModel(paymentMethod: paymentMethod),
        "userId": decodedToken["id"],
      };

      final response = await Dio().post(
        ('$baseUrl/transactions'),
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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TransactionSuccesScreen(
              method: paymentMethod,
              price: price,
              product: product,
              point: point,
            ),
          ),
        );
      }

      return true;
    } on DioError {
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
