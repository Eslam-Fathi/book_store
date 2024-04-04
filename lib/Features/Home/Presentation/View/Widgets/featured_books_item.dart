import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBooksItem extends StatelessWidget {
  const FeaturedBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 309,
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
