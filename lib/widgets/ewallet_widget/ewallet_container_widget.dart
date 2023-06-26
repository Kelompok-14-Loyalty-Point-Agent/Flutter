import 'package:flutter/material.dart';

class EwalletContainer extends StatelessWidget {
  final String image;
  final BoxShadow containerShadow;
  const EwalletContainer({
    super.key,
    required this.image,
    required this.containerShadow,
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
        ],
      ),
    );
  }
}
