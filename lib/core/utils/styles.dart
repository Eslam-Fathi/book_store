import 'package:book_store/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  // TextStyles
  static String kPrimaryFontStyle = GoogleFonts.rosarivo().fontFamily!;

  static TextStyle textRegular14 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 14.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular20 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 20.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular16 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 16.sp,
    color: kSecondaryColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textRegular24 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 24.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textSimiBold25 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 25.sp,
    color: Colors.white,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textSimiBold16 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 16.sp,
    color: const Color(0xff4A2B29),
    fontWeight: FontWeight.w600,
  );

  static TextStyle textLight10 = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 10.sp,
    color: Colors.white,
    fontWeight: FontWeight.w300,
  );
}
