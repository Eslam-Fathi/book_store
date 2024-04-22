import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item.dart';
import 'package:book_store/core/Widgets/custom_circular_indicator.dart';
import 'package:book_store/core/Widgets/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedBooksListView extends StatelessWidget {
  const RelatedBooksListView({
    super.key,
    required this.relatedBooksCubit,
  });

  final RelatedBooksCubit relatedBooksCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
      bloc: relatedBooksCubit,
      builder: (context, state) {
        if (state is RelatedBooksSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return RelatedBooksItem(
                  book: state.books[index],
                );
              },
            ),
          );
        } else if (state is RelatedBooksFailure) {
          return Center(
            child: CustomErrorMessage(
              errorMessage: state.errorMessage,
            ),
          );
        } else {
          return const CustomCircularIndicator();
        }
      },
    );
  }
}
