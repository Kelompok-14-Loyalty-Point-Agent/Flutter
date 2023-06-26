import 'package:flutter/material.dart';

class ProviderIconModel {
  final int? idData;
  final int? idCredit;
  final Widget? namaIcon;

  ProviderIconModel({
    this.idData,
    this.idCredit,
    this.namaIcon,
  });
}

ProviderIconModel providerIconModel(String phoneNumber) {
  bool useSuffix = true;
  ProviderIconModel? _providerIconModel;
  if (phoneNumber.substring(2, 3) == "3" && phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "3" ||
      phoneNumber.substring(2, 3) == "3" &&
          phoneNumber.substring(3, 4) == "8") {
    useSuffix;
    return _providerIconModel = ProviderIconModel(
      idData: 9,
      idCredit: 10,
      namaIcon: Image.asset(
        "assets/icons/provider_axis_icon.png",
        scale: 4,
      ),
    );
  } else if (phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "7" ||
      phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "8" ||
      phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "9" ||
      phoneNumber.substring(2, 3) == "5" &&
          phoneNumber.substring(3, 4) == "9" ||
      phoneNumber.substring(2, 3) == "7" &&
          phoneNumber.substring(3, 4) == "7" ||
      phoneNumber.substring(2, 3) == "7" &&
          phoneNumber.substring(3, 4) == "8") {
    useSuffix;
    return _providerIconModel = ProviderIconModel(
      idData: 3,
      idCredit: 4,
      namaIcon: Image.asset(
      "assets/icons/provider_xl_icon.png",
      scale: 4.5,
    ),
    );
  } else if (phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "1" &&
          phoneNumber.substring(3, 4) == "3" ||
      phoneNumber.substring(2, 3) == "2" &&
          phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "2" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "2" &&
          phoneNumber.substring(3, 4) == "3" ||
      phoneNumber.substring(2, 3) == "5" &&
          phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "5" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "5" &&
          phoneNumber.substring(3, 4) == "3") {
    useSuffix;
    return _providerIconModel = ProviderIconModel(
      idData: 3,
      idCredit: 4,
      namaIcon: Image.asset(
      "assets/icons/provider_tsel_icon.png",
      scale: 4,
    ),
    );
  } else if (phoneNumber.substring(2, 3) == "9" &&
          phoneNumber.substring(3, 4) == "5" ||
      phoneNumber.substring(2, 3) == "9" &&
          phoneNumber.substring(3, 4) == "6" ||
      phoneNumber.substring(2, 3) == "9" &&
          phoneNumber.substring(3, 4) == "7" ||
      phoneNumber.substring(2, 3) == "9" &&
          phoneNumber.substring(3, 4) == "8" ||
      phoneNumber.substring(2, 3) == "9" &&
          phoneNumber.substring(3, 4) == "9") {
    useSuffix;
    return _providerIconModel = ProviderIconModel(
      idData: 3,
      idCredit: 4,
      namaIcon: Image.asset(
      "assets/icons/provider_tri_icon.png",
      scale: 4,
    ),
    );
  } else if (phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "1" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "2" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "3" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "4" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "5" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "6" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "7" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "8" ||
      phoneNumber.substring(2, 3) == "8" &&
          phoneNumber.substring(3, 4) == "9") {
    useSuffix;
    return _providerIconModel = ProviderIconModel(
      idData: 3,
      idCredit: 4,
      namaIcon: Image.asset(
      "assets/icons/provider_smartfren_icon.png",
      scale: 4,
    ),
    );
  }
  useSuffix = false;
  return _providerIconModel!;
}

// Image? providerIcons(String phoneNumber) {
//   bool useSuffix = true;
//   if (phoneNumber.substring(2, 3) == "3" && phoneNumber.substring(3, 4) == "1" ||
//       phoneNumber.substring(2, 3) == "3" &&
//           phoneNumber.substring(3, 4) == "2" ||
//       phoneNumber.substring(2, 3) == "3" &&
//           phoneNumber.substring(3, 4) == "3" ||
//       phoneNumber.substring(2, 3) == "3" &&
//           phoneNumber.substring(3, 4) == "8") {
//     useSuffix;
//     return Image.asset(
//       "assets/icons/provider_axis_icon.png",
//       scale: 4,
//     );
//   } else if (phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "7" ||
//       phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "8" ||
//       phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "9" ||
//       phoneNumber.substring(2, 3) == "5" &&
//           phoneNumber.substring(3, 4) == "9" ||
//       phoneNumber.substring(2, 3) == "7" &&
//           phoneNumber.substring(3, 4) == "7" ||
//       phoneNumber.substring(2, 3) == "7" &&
//           phoneNumber.substring(3, 4) == "8") {
//     useSuffix;
//     return Image.asset(
//       "assets/icons/provider_xl_icon.png",
//       scale: 4.5,
//     );
//   } else if (phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "1" ||
//       phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "2" ||
//       phoneNumber.substring(2, 3) == "1" &&
//           phoneNumber.substring(3, 4) == "3" ||
//       phoneNumber.substring(2, 3) == "2" &&
//           phoneNumber.substring(3, 4) == "1" ||
//       phoneNumber.substring(2, 3) == "2" &&
//           phoneNumber.substring(3, 4) == "2" ||
//       phoneNumber.substring(2, 3) == "2" &&
//           phoneNumber.substring(3, 4) == "3" ||
//       phoneNumber.substring(2, 3) == "5" &&
//           phoneNumber.substring(3, 4) == "1" ||
//       phoneNumber.substring(2, 3) == "5" &&
//           phoneNumber.substring(3, 4) == "2" ||
//       phoneNumber.substring(2, 3) == "5" &&
//           phoneNumber.substring(3, 4) == "3") {
//     useSuffix;
//     return Image.asset(
//       "assets/icons/provider_tsel_icon.png",
//       scale: 4,
//     );
//   } else if (phoneNumber.substring(2, 3) == "9" &&
//           phoneNumber.substring(3, 4) == "5" ||
//       phoneNumber.substring(2, 3) == "9" &&
//           phoneNumber.substring(3, 4) == "6" ||
//       phoneNumber.substring(2, 3) == "9" &&
//           phoneNumber.substring(3, 4) == "7" ||
//       phoneNumber.substring(2, 3) == "9" &&
//           phoneNumber.substring(3, 4) == "8" ||
//       phoneNumber.substring(2, 3) == "9" &&
//           phoneNumber.substring(3, 4) == "9") {
//     useSuffix;
//     return Image.asset(
//       "assets/icons/provider_tri_icon.png",
//       scale: 4,
//     );
//   } else if (phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "1" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "2" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "3" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "4" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "5" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "6" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "7" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "8" ||
//       phoneNumber.substring(2, 3) == "8" &&
//           phoneNumber.substring(3, 4) == "9") {
//     useSuffix;
//     return Image.asset(
//       "assets/icons/provider_smartfren_icon.png",
//       scale: 4,
//     );
//   }
//   useSuffix = false;
//   return null;
// }
