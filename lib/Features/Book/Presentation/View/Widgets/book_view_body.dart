import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/core/Functions/lunch_url.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Book/Presentation/View/Widgets/book_action_buttons_row.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/component_big_button.dart';
import 'package:book_store/Features/Book/Presentation/View/Widgets/small_book_description.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({
    super.key,
    required this.book,
    required this.openRelatedBooksOverlay,
  });

  final BookModel book;
  final void Function() openRelatedBooksOverlay;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, bottom: 27.h),
                child: SizedBox(
                  width: 302.w,
                  height: 336.h,
                  child: CachedNetworkImage(
                    imageUrl: book.volumeInfo?.imageLinks?.thumbnail ??
                        AssetsData.noImageFound,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Text(
                textAlign: TextAlign.center,
                (book.volumeInfo?.title).toString(), // Book Title

                style: Styles.textRegular24,
              ),
              Text(
                textAlign: TextAlign.center,
                book.volumeInfo?.authors![0].toString() ??
                    "Author Unknown", // Author Name
                style: Styles.textRegular16,
              ),
              const BookActionButtonsRow(),
              SmallBookDescription(
                book: book,
              ),
              // Component Buttons

              // this button will open the preview link of the book if available
              ComponentBookButton(
                navigateTo: () {
                  launchCustomUrl(context, book.volumeInfo?.previewLink);
                },
                fillColor: kSecondaryColor,
                textColor: const Color(0xff4A2B29),
              ),
              // this button will open the related books overlay
              ComponentBookButton(
                navigateTo: openRelatedBooksOverlay,
                fillColor: Colors.transparent,
                textColor: kSecondaryColor,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
