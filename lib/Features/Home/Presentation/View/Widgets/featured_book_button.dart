import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBookButton extends StatelessWidget {
  const FeaturedBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39.h,
      width: 111.w,
      decoration: ShapeDecoration(
        color: Colors.white.withOpacity(.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Center(
        child: Text(
          "Check it out!",
          style: Styles.textSimiBold16.copyWith(
            // color: Colors.white,
            color: kSecondaryColor,
          ),
        ),
      ),
    );
  }
}
