import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_item.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
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
  void _openModalBottomOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
      constraints: const BoxConstraints(maxWidth: double.infinity),
      isScrollControlled: true,
      context: context,
      builder: (ctx) => Container(
        height: MediaQuery.of(context).size.height * .65,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 18.w),
          child: Column(
            children: [
              Container(
                height: 4.h,
                width: 40.w,
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Related Books',
                  style: Styles.textRegular20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const RelatedBooksItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // BlocProvider.of<RelatedBooksCubit>(context)
    //     .getRelatedBooks(category: widget.book.volumeInfo!.categories![0]);

    super.initState();
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
