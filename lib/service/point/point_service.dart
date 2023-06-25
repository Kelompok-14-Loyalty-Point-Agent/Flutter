import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class PointService {
  Future<int?> getPoint() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    var jwt = token;
    Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);

    int userId = decodedToken["id"];

    try {
      final response = await Dio().get(
        '$baseUrl/users/$userId',
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );
      print("ini service ${response.data}");

      final point = response.data["data"]["profile"]["Point"] as int?;

      return point ?? 0;
    } on DioError {
      rethrow;
    }
  }
}
