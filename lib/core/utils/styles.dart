import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  // TextStyles
  static String kPrimaryFontStyle = GoogleFonts.rosarivo().fontFamily!;

  static TextStyle titleMedium = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 20.sp,
    color: Colors.white,
  );

  static TextStyle titleSmall = TextStyle(
    fontFamily: GoogleFonts.rosarivo().fontFamily,
    fontSize: 14.sp,
    color: Colors.white,
  );
}
