import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/related_books_view_body.dart';

class RelatedBooksView extends StatelessWidget {
  const RelatedBooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          RelatedBooksViewBody(),
          CustomAppBar(),
        ],
      ),
    );
  }
}
