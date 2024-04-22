import 'package:book_store/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/book_action_buttons_row.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/component_big_button.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/small_book_description.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({
    super.key,
    required this.book,
  });

  final BookModel book;

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
                (book.volumeInfo?.title).toString(), // Book Title

                style: Styles.textRegular24,
              ),
              Text(
                book.volumeInfo?.authors![0].toString() ??
                    "Author Unknown", // Author Name
                style: Styles.textRegular16,
              ),
              const BookActionButtonsRow(),
              SmallBookDescription(
                book: book,
              ),
              // Component Button

              ComponentBookButton(
                navigateTo: () {},
                fillColor: kSecondaryColor,
                textColor: const Color(0xff4A2B29),
              ),
              ComponentBookButton(
                navigateTo: () {
                  GoRouter.of(context).push(
                    AppRouter.kRelatedView,
                  );
                },
                fillColor: Colors.transparent,
                textColor: kSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
