import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleConst {
  TextStyle heading1 = GoogleFonts.expletusSans(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  TextStyle heading2 = GoogleFonts.expletusSans(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  TextStyle heading3 = GoogleFonts.expletusSans(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  TextStyle heading4 = GoogleFonts.expletusSans(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );
  TextStyle heading5 = GoogleFonts.expletusSans(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF030F51),
  );

  TextStyle description1 = GoogleFonts.ptSans(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  TextStyle description2 = GoogleFonts.ptSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  TextStyle description3 = GoogleFonts.ptSans(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  TextStyle description4 = GoogleFonts.ptSans(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  TextStyle heading1WithColor(Color color) {
    return heading1.copyWith(color: color);
  }

  TextStyle heading2WithColor(Color color) {
    return heading2.copyWith(color: color);
  }

  TextStyle heading3WithColor(Color color) {
    return heading3.copyWith(color: color);
  }

  TextStyle heading4WithColor(Color color) {
    return heading4.copyWith(color: color);
  }

  TextStyle heading5WithColor(Color color) {
    return heading5.copyWith(color: color);
  }

  TextStyle description1WithColor(Color color) {
    return description1.copyWith(color: color);
  }

  TextStyle description2WithColor(Color color) {
    return description2.copyWith(color: color);
  }

  TextStyle description3WithColor(Color color) {
    return description3.copyWith(color: color);
  }

  TextStyle description4WithColor(Color color) {
    return description4.copyWith(color: color);
  }
}
