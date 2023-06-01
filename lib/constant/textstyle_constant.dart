import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleConst {
  static TextStyle heading1 = GoogleFonts.expletusSans(
    decoration: TextDecoration.none,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  static TextStyle heading2 = GoogleFonts.expletusSans(
    decoration: TextDecoration.none,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  static TextStyle heading3 = GoogleFonts.expletusSans(
    decoration: TextDecoration.none,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  static TextStyle heading4 = GoogleFonts.expletusSans(
    decoration: TextDecoration.none,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  static TextStyle heading5 = GoogleFonts.expletusSans(
    decoration: TextDecoration.none,
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );

  static TextStyle description1 = GoogleFonts.ptSans(
    decoration: TextDecoration.none,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle description2 = GoogleFonts.ptSans(
    decoration: TextDecoration.none,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle description3 = GoogleFonts.ptSans(
    decoration: TextDecoration.none,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static TextStyle description4 = GoogleFonts.ptSans(
    decoration: TextDecoration.none,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  static TextStyle heading1WithColor(Color color) {
    return heading1.copyWith(color: color);
  }

  static TextStyle heading2WithColor(Color color) {
    return heading2.copyWith(color: color);
  }

  static TextStyle heading3WithColor(Color color) {
    return heading3.copyWith(color: color);
  }

  static TextStyle heading4WithColor(Color color) {
    return heading4.copyWith(color: color);
  }

  static TextStyle heading5WithColor(Color color) {
    return heading5.copyWith(color: color);
  }

  static TextStyle description1WithColor(Color color) {
    return description1.copyWith(color: color);
  }

  static TextStyle description2WithColor(Color color) {
    return description2.copyWith(color: color);
  }

  static TextStyle description3WithColor(Color color) {
    return description3.copyWith(color: color);
  }

  static TextStyle description4WithColor(Color color) {
    return description4.copyWith(color: color);
  }
}
