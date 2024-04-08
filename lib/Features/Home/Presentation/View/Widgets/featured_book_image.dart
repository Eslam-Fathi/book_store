import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';

class FeaturedBookImage extends StatelessWidget {
  const FeaturedBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsData.bookTestImage,
          width: 111.w,
          height: 111.h,
          fit: BoxFit.cover,
        ),
        Container(
          width: 40.w,
          height: 20.h,
          decoration: ShapeDecoration(
            color: kContainerColor.withOpacity(.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.r),
                topLeft: Radius.circular(8.r),
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(AssetsData.rateStar),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  '4.5',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
