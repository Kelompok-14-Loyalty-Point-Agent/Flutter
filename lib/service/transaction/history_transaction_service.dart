import 'package:capstone_14/constant/api_constant.dart';
import 'package:capstone_14/model/transaction/history_transaction_response_body.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TransactionHistoryService {
  Future<List<TransactionHistoryModel>> getTransactionHistory() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    var jwt = token;
    Map<String, dynamic> decodedToken = JwtDecoder.decode(jwt!);

    int userId = decodedToken["id"];

    try {
      final response = await Dio().get(
        ('$baseUrl/transactions/users/$userId'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<TransactionHistoryModel> historyTransaction =
          (response.data["data"] as List)
              .map(
                (historyTransaction) =>
                    TransactionHistoryModel.fromMap(historyTransaction),
              )
              .toList();
      return historyTransaction;
    } on DioError {
      rethrow;
    }
  }
}
