import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RelatedBooksItemDetails extends StatelessWidget {
  const RelatedBooksItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image
        Container(
          height: 105.h,
          width: 100.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(AssetsData.bookTestImage),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book Title",
                style: Styles.textRegular16,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Author Name",
                style: Styles.textRegular16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
