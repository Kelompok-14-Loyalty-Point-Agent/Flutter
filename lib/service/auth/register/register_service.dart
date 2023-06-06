import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../../constant/api_constant.dart';

class RegisterService {
  Future<bool> postRegister(
    BuildContext context, {
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      Map data = {
        "email": email,
        "name": name,
        "password": password,
      };

      final response = await Dio().post(
        ('$baseUrl/auth/register'),
        data: data,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Register Berhasil',
            ),
          ),
        );
      }

      return true;
    } on DioError catch (e) {
      final message = e.response?.data["message"].toString();

      if (e.response?.statusCode == 500) {
        if (message ==
            "Error 1062 (23000): Duplicate entry 'dimasrizqi@alterra.com' for key 'users.email'") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Email telah digunakan',
              ),
            ),
          );
        } else {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Server Gagal',
              ),
            ),
          );
        }
      } else if (e.response?.statusCode == 400) {
        if (message ==
            "Key: 'User.Email' Error:Field validation for 'Email' failed on the 'required' tag\nKey: 'User.Password' Error:Field validation for 'Password' failed on the 'required' tag") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Email dan Password wajib diisi',
              ),
            ),
          );
        } else if (message ==
            "Key: 'User.Email' Error:Field validation for 'Email' failed on the 'required' tag") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Email wajib diisi',
              ),
            ),
          );
        } else if (message ==
            "Key: 'User.Password' Error:Field validation for 'Password' failed on the 'required' tag") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Password wajib diisi',
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
