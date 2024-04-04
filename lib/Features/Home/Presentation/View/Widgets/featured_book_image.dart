import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        )
      ],
    );
  }
}