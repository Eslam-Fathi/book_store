import 'package:book_store/Features/Home/Presentation/Manager/Featured_Books_cubit/featured_books_cubit.dart';
import 'package:book_store/core/Widgets/custom_circular_indicator.dart';
import 'package:book_store/core/Widgets/custom_error_message.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_item.dart';

class RecomendedBooksListView extends StatelessWidget {
  const RecomendedBooksListView({
    super.key,
    required this.height,
    required this.width,
    required this.sectionTitle,
  });

  final double height, width;
  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (sectionTitle == 'Recommended') {
          if (state is FeaturedBooksSuccess) {
            return SizedBox(
              height: height.h,
              child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: FeaturedBookItem(
                      book: state.books[index],
                      height: 230,
                      width: 135,
                    ),
                  );
                },
              ),
            );
          } else if (state is FeaturedBooksFailure) {
            return Center(
              child: CustomErrorMessage(errorMessage: state.errorMessage),
            );
          } else {
            return SizedBox(
              height: 135.h,
              child: const CustomCircularIndicator(),
            );
          }
        } else {
          return SizedBox(
            height: 135.h,
            child: Center(
              child: Text(
                'Sorry, there is no audio books here yet! Stay tuned.',
                style: Styles.textRegular16,
              ),
            ),
          );
        }
      },
    );
  }
}
