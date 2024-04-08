import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:book_store/core/utils/assets.dart';

class FeaturedCollectionsItem extends StatelessWidget {
  const FeaturedCollectionsItem(
      {super.key, required this.width, required this.height});

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h,
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20.r),
        ),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.testImage),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20.h,
            left: 50.w,
            child: Text(
              "Collection",
              style: TextStyle(
                fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
                fontSize: 10.sp,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: 30.h,
            left: 25.w,
            child: SizedBox(
              width: 120.w,
              height: 120.h,
              child: Text(
                "SCIENCE FICTION",
                maxLines: 2,
                softWrap: true,
                style: TextStyle(
                  fontFamily: GoogleFonts.kodchasan().fontFamily,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
