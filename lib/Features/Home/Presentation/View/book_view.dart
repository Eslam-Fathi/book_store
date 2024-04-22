import 'package:book_store/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item.dart';
import 'package:book_store/core/Services/service_locator.dart';
import 'package:book_store/core/Widgets/custom_circular_indicator.dart';
import 'package:book_store/core/Widgets/custom_error_message.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
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
            ),
          ],
        ),
      ),
    );
  }
}
