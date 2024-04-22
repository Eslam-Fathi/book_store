import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item.dart';

class RelatedBooksViewBody extends StatelessWidget {
  const RelatedBooksViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20.w),
      child: ListView.builder(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const RelatedBooksItem();
        },
      ),
    );
  }
}
