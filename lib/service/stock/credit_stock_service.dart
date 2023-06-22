import 'dart:ffi';

import 'package:capstone_14/constant/provider_icon_constant.dart';
import 'package:capstone_14/model/stock/stock_response_body.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/api_constant.dart';

class CreditStockService {
  Future<List<StockModel>> getCreditStock(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    try {
      final response = await Dio().get(
        ('$baseUrl/stocks/details/bystocks/$id'),
        options: Options(
          headers: {
            "Authorization": "Bearer $token",
          },
        ),
      );

      final List<StockModel> stocks = (response.data['data'] as List)
          .map((stock) => StockModel.fromMap(stock))
          .toList();

      return stocks;
    } on DioError {
      rethrow;
    }
  }
}
