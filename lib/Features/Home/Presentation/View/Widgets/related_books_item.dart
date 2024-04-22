import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item_details.dart';
import 'package:book_store/core/utils/constants.dart';

class RelatedBooksItem extends StatelessWidget {
  const RelatedBooksItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        child: Container(
          decoration: ShapeDecoration(
            color: kContainerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          height: 100.h,
          child: const RelatedBooksItemDetails(),
        ),
      ),
    );
  }
}
