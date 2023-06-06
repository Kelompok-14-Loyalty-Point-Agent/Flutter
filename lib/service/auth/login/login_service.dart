import 'package:capstone_14/constant/api_constant.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  // Post Account
  Future<bool> postLogin(
    BuildContext context, {
    required String email,
    required String password,
  }) async {
    try {
      Map data = {
        "email": email,
        "password": password,
      };

      final response = await Dio().post(
        ('$baseUrl/auth/login'),
        data: data,
        options: Options(
          headers: {"Content-Type": "application/json"},
        ),
      );

      saveToken(token) async {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString('token', response.data['data'].toString());
        print(token);
      }

      readToken(token) async {
        final prefs = await SharedPreferences.getInstance();
        prefs.getString('token');
      }

      if (response.statusCode == 200) {
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Login Berhasil',
            ),
          ),
        );
        saveToken(response.data['data'].toString());
      }

      return true;
    } on DioError catch (e) {
      final message = e.response?.data["message"].toString();

      if (e.response?.statusCode == 500) {
        throw ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Server Gagal',
            ),
          ),
        );
      } else if (e.response?.statusCode == 400) {
        if (message ==
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
        } else {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                "Terjadi Kesalahan!",
              ),
            ),
          );
        }
      } else if (e.response?.statusCode == 401) {
        if (message == "record not found") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Email tidak tersedia',
              ),
            ),
          );
        } else if (message ==
            "crypto/bcrypt: hashedPassword is not the hash of the given password") {
          throw ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Password salah',
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
