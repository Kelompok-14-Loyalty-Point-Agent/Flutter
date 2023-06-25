// ignore_for_file: use_build_context_synchronously

import 'package:capstone_14/constant/api_constant.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileService {
  Future<bool> postLogout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().post(
        ('$baseUrl/users/logout'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      if (response.statusCode == 200) {
        prefs.remove('token');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Log Out Berhasil',
            ),
          ),
        );
      }

      return true;
    } on DioError catch (e) {
      final message = e.response?.data["message"].toString();

      if (e.response?.statusCode == 401) {
        if (message == "invalid token") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Gagal Log Out',
              ),
            ),
          );
        } else if (message == "missing or malformed jwt") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Gagal Log Out',
              ),
            ),
          );
        }
      }
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
