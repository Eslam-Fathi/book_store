import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_overlay_view_body.dart';

class RelatedBooksOverlayView extends StatelessWidget {
  const RelatedBooksOverlayView({
    super.key,
    required this.book,
    required this.relatedBooksCubit,
  });

  final BookModel book;
  final RelatedBooksCubit relatedBooksCubit;

  @override
  Widget build(BuildContext context) {
    // Call getRelatedBooks here
    relatedBooksCubit.getRelatedBooks(
        category: book.volumeInfo!.categories![0]);

    return RelatedBooksOverlayViewBody(relatedBooksCubit: relatedBooksCubit);
  }
}
