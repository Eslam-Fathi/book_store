import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Book/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Book/Presentation/View/Widgets/related_books_list_view.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';

class RelatedBooksOverlayViewBody extends StatelessWidget {
  const RelatedBooksOverlayViewBody({
    super.key,
    required this.relatedBooksCubit,
  });

  final RelatedBooksCubit relatedBooksCubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .65,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
        child: Column(
          children: [
            Container(
              height: 4,
              width: 40,
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Related Books',
                style: Styles.textRegular20,
              ),
            ),
            const SizedBox(height: 20),
            RelatedBooksListView(relatedBooksCubit: relatedBooksCubit),
          ],
        ),
      ),
    );
  }
}
