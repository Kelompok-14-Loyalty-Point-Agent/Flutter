import 'package:flutter/material.dart';

Image? providerIcons(String phoneNumber) {
  bool useSuffix = true;
  if (phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "3" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "8") {
    useSuffix;
    return Image.asset(
      "assets/icons/provider_axis_icon.png",
      scale: 4,
    );
  }
  useSuffix = false;
  return null;
}
