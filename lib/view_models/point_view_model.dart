import 'dart:ffi';

import 'package:capstone_14/model/point/profile_models.dart';
import 'package:flutter/foundation.dart';

import '../service/point/point_service.dart';

class PointViewModel extends ChangeNotifier {
  final PointService _pointService = PointService();
  double point = 0.0;

  Future<void> fetchPoint(int id) async {
    try {
      final Double fetchedPoint = await _pointService.getPoint(id);
      if (fetchedPoint != null) {
        point = fetchedPoint as double;
      }

      notifyListeners();
      print(point);
    } catch (e) {
      print('Failed to fetch point: $e');
    }
  }
}
