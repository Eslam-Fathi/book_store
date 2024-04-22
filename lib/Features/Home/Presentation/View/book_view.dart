import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';

class BookView extends StatefulWidget {
  const BookView({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  @override
  void initState() {
    BlocProvider.of<RelatedBooksCubit>(context)
        .getRelatedBooks(category: widget.book.volumeInfo!.categories![0]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BookViewBody(
            book: widget.book,
          ),
          const CustomAppBar(),
        ],
      ),
    );
  }
}
