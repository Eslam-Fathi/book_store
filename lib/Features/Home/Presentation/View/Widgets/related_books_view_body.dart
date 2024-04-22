import 'package:book_store/core/Widgets/custom_circular_indicator.dart';
import 'package:book_store/core/Widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item.dart';

class RelatedBooksViewBody extends StatelessWidget {
  const RelatedBooksViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
      builder: (context, state) {
        if (state is RelatedBooksSuccess) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20.w),
            child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return RelatedBooksItem();
              },
            ),
          );
        } else if (state is RelatedBooksFailure) {
          return Center(
            child: CustomErrorMessage(errorMessage: state.errorMessage),
          );
        } else {
          return const Center(
            child: CustomCircularIndicator(),
          );
        }
      },
    );
  }
}
