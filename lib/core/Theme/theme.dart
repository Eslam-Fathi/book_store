import 'package:book_store/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: kPrimaryColor,
  textTheme: GoogleFonts.rosarivoTextTheme(ThemeData.dark().textTheme),
);
