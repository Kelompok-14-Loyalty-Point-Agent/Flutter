import 'package:flutter/material.dart';

class PriceContainerWidget extends StatelessWidget {
  final String amount;
  final String price;
  final BoxShadow containerShadow;
  final String product;
  const PriceContainerWidget({
    super.key,
    required this.amount,
    required this.price,
    required this.containerShadow,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [containerShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            amount,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Color(0xFF030F51),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Color(0xFF931136),
            ),
          ),
        ],
      ),
    );
  }
}
