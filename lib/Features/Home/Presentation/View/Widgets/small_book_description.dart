import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/core/utils/styles.dart';

class SmallBookDescription extends StatelessWidget {
  const SmallBookDescription({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 302.w,
      child: Text(
        book.volumeInfo!.description.toString(),
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        softWrap: true,
        style: Styles.textRegular14.copyWith(
          fontFamily: GoogleFonts.openSans().fontFamily,
          fontSize: 12.sp,
        ),
      ),
    );
  }
}
