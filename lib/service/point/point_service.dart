import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';
import '../../model/point/profile_models.dart';

class PointService {
  Future<Double> getPoint(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        '$baseUrl/users/$id',
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final profileModels = ProfileModels.fromJson(response.data);
      final point = profileModels.data.profile.point;

      print(point);
      print(response);

      return point;
    } on DioError {
      rethrow;
    }
  }
}
