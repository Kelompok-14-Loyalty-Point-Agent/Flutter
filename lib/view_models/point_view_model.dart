import 'package:capstone_14/model/point/profile_models.dart';

import 'package:flutter/foundation.dart';

import '../service/point/point_service.dart';

class PointViewModel extends ChangeNotifier {
  final PointService _pointService = PointService();
  List<ProfileModels> _tPoint = [];
  List<ProfileModels> get tPoint => _tPoint;

  Future<void> fetchPoint(int id) async {
    try {
      final List<ProfileModels> point =
          (await _pointService.getPoint(id)) as List<ProfileModels>;
      _tPoint = point;
      notifyListeners();
      print(point);
    } catch (e) {
      print('Failed to fetch point: $e');
    }
  }
}
