import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_collections_item.dart';

class FeaturedCollectionsListView extends StatelessWidget {
  const FeaturedCollectionsListView(
      {super.key, required this.height, required this.width});

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: FeaturedCollectionsItem(
              width: width,
              height: height,
            ),
          );
        },
      ),
    );
  }
}
