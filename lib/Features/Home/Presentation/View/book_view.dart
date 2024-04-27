import 'package:flutter/material.dart';

import 'package:book_store/core/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/Features/Home/Presentation/View/related_books_overlay_view.dart';
import 'package:book_store/core/Services/service_locator.dart';

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
  late RelatedBooksCubit _relatedBooksCubit;

  @override
  void initState() {
    super.initState();
    _relatedBooksCubit =
        RelatedBooksCubit(getServiceLocator.get<HomeRepoImpl>());
  }

  @override
  void dispose() {
    _relatedBooksCubit.close();
    super.dispose();
  }

  void _openModalBottomOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      isScrollControlled: true,
      context: context,
      builder: (ctx) => RelatedBooksOverlayView(
        book: widget.book,
        relatedBooksCubit: _relatedBooksCubit,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BookViewBody(
            book: widget.book,
            openRelatedBooksOverlay: _openModalBottomOverlay,
          ),
          const CustomAppBar(),
        ],
      ),
    );
  }
}
