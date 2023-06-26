import 'package:flutter/foundation.dart';

import '../service/point/point_service.dart';

class PointViewModel extends ChangeNotifier {
  int? point;

  Future<void> fetchPoint() async {
    try {
      final int? fetchedPoint = await PointService().getPoint();
      point = fetchedPoint;
      point?.toDouble();
      notifyListeners();
    } catch (e) {
      print('Failed to fetch point: $e');
    }
  }
}
