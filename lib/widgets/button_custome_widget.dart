// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ButtonCustome extends StatelessWidget {
  final Function() onPressed;
  final String title;
  final Color backgroundColour;
  final double width;
  final TextStyle style;
  const ButtonCustome({
    Key? key,
    required this.onPressed,
    required this.title,
    required this.backgroundColour,
    required this.width,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 6),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
