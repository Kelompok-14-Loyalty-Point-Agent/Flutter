import 'package:capstone_14/constant/provider_icon_constant.dart';
import 'package:capstone_14/model/stock/stock_response_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class DataStockService {Future<List<StockResponseBody>> getDataStock(BuildContext context) async {
    int? idDataAPI;

    ProviderIconModel(idData: idDataAPI);

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        ('$baseUrl/stocks/details/bystocks/{$idDataAPI}'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<StockResponseBody> listStock = (response.data as List)
          .map((stock) => StockResponseBody.fromJson(stock))
          .toList();

      return listStock;
    } on DioError {
      // ignore: use_build_context_synchronously
      rethrow;
    }
  }}