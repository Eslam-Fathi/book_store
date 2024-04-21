import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';

class FeaturedBookImage extends StatelessWidget {
  const FeaturedBookImage({
    super.key,
    required this.imageUrl,
    required this.bookRate,
  });

  final String imageUrl;
  final String bookRate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: CachedNetworkImage(
            height: 111.h,
            width: 111.w,
            fit: BoxFit.cover,
            imageUrl: imageUrl,
          ),
        ),
        Container(
          width: 40.w,
          height: 20.h,
          decoration: ShapeDecoration(
            color: kContainerColor.withOpacity(.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20.r),
                topLeft: Radius.circular(10.r),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AssetsData.rateStar),
                Text(
                  bookRate,
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
