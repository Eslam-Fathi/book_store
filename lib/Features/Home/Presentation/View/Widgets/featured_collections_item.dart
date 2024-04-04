import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          fit: BoxFit.cover,
          image: AssetImage(AssetsData.testImage),
        ),
      ),
    );
  }
}
