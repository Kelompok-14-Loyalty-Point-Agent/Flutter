import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldCustome extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isValidTextField;
  final String errorMessage;
  final String title;
  final String? fontFamily;
  final String hintText;
  final bool isObsucreText;
  final Widget? suffixIconWidget;
  final bool isReadOnly;
  final TextInputType? keyboardType;
  final String? initialValue;

  const TextFieldCustome({
    super.key,
    this.controller,
    this.onChanged,
    this.validator,
    required this.title,
    required this.isValidTextField,
    required this.errorMessage,
    required this.hintText,
    this.fontFamily,
    this.isObsucreText = false,
    this.isReadOnly = false,
    this.suffixIconWidget,
    this.keyboardType = TextInputType.text,
    this.initialValue,
    required InputDecoration decoration,
    bool obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.expletusSans(
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 234,
          height: 36,
          child: TextFormField(
            controller: controller,
            readOnly: isReadOnly,
            keyboardType: keyboardType,
            onChanged: onChanged,
            validator: validator,
            obscureText: isObsucreText,
            initialValue: initialValue,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: fontFamily,
              ),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                gapPadding: 10,
              ),
              errorText: isValidTextField ? null : errorMessage,
              suffixIcon: suffixIconWidget,
            ),
          ),
        ),
      ],
    );
  }
}
