import 'package:capstone_14/constant/textstyle_constant.dart';
import 'package:flutter/material.dart';

class BillsContainerWidget extends StatelessWidget {
  final String image;
  final String? label;
  final BoxShadow containerShadow;
  const BillsContainerWidget({
    super.key,
    required this.containerShadow,
    required this.image,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [containerShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 4,
          ),
          const SizedBox(height: 10),
          Text(
            label?.toUpperCase() ?? "",
            style: TextStyleConst.heading5,
          ),
        ],
      ),
    );
  }
}
