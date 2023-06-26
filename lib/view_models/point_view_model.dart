import 'package:capstone_14/model/point/profile_models.dart';
import 'package:flutter/foundation.dart';

import '../service/point/point_service.dart';

class PointViewModel extends ChangeNotifier {
  ProfileResponseBody? profile;

  Future<void> fetchPoint() async {
    profile = await PointService().getPoint();
    notifyListeners();
  }
}
