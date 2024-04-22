import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/core/utils/styles.dart';

class RelatedBooksItemDetails extends StatelessWidget {
  const RelatedBooksItemDetails({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        ClipRRect(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(10.r),
          ),
          child: CachedNetworkImage(
            imageUrl: (book.volumeInfo?.imageLinks?.thumbnail).toString(),
            height: 105.h,
            width: 100.w,
            fit: BoxFit.fill,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          child: SizedBox(
            width: 180.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (book.volumeInfo?.title).toString(),
                  style: Styles.textRegular16,
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.fade,
                  maxLines: 2,
                ),
                const Spacer(),
                Text(
                  (book.volumeInfo?.authors?[0]).toString(),
                  style: Styles.textLight10,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
