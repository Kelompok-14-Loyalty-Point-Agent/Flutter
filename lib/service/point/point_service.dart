import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/point/profile_models.dart';

class PointService {
  Future<double?> getPoint(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    final baseUrl = '{{BASE_URL}}'; // Ganti dengan base URL yang sesuai

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
      final point = profileModels.data?.profile?.point;
      

      print(point);

      return point;
    } on DioError {
      rethrow;
    }
  }
}
