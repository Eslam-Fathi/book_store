import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/Manager/Newest_Books_cubit/newest_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_item.dart';
import 'package:book_store/core/Widgets/custom_circular_indicator.dart';
import 'package:book_store/core/Widgets/custom_error_message.dart';

class RecentBooksListView extends StatelessWidget {
  const RecentBooksListView({
    super.key,
    required this.height,
    required this.width,
  });

  final double height, width;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
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
        } else if (state is NewestBooksFailure) {
          return Center(
            child: CustomErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return SizedBox(
            height: 135.h,
            child: const CustomCircularIndicator(),
          );
        }
      },
    );
  }
}
