import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item_details.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:go_router/go_router.dart';

class RelatedBooksItem extends StatelessWidget {
  const RelatedBooksItem({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(10.r),
          onTap: () {
            navigateToBook(context);
          },
          child: Container(
            decoration: ShapeDecoration(
              color: kContainerColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            height: 100.h,
            child: RelatedBooksItemDetails(
              book: book,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToBook(context) {
    // Get.to(
    //   () => const BookView(),
    //   transition: Transition.circularReveal,
    //   duration: kTransitionDuration,
    // );
    GoRouter.of(context).push(AppRouter.kBookView, extra: book);
  }
}
