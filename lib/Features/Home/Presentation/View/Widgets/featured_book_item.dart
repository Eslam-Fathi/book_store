import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_button.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_image.dart';
import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem(
      {super.key, required this.width, required this.height});

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: kContainerColor.withOpacity(.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      height: height.h,
      width: width.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Column(
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                color: kContainerColor.withOpacity(.5),
              ),
              child: const FeaturedBookImage(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Pachinko Novela",
              maxLines: 2,
              softWrap: true,
              style: Styles.titleSmall,
            ),
            SizedBox(
              height: 10.h,
            ),
            const FeaturedBookButton(),
          ],
        ),
      ),
    );
  }
}
