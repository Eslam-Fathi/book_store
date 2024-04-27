import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_button.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_image.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({
    super.key,
    required this.width,
    required this.height,
    required this.book,
  });

  final double width, height;

  final BookModel book;

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
              child: FeaturedBookImage(
                imageUrl: (book.volumeInfo?.imageLinks?.thumbnail ??
                        AssetsData.noImageFound)
                    .toString(),
                bookRate: '0.0',
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              (book.volumeInfo?.title).toString(),
              maxLines: 2,
              softWrap: false,
              overflow: TextOverflow.fade,
              style: Styles.textRegular14,
            ),
            SizedBox(
              height: 10.h,
            ),
            FeaturedBookButton(
              book: book,
            ),
          ],
        ),
      ),
    );
  }
}
