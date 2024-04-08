import 'package:flutter/material.dart';

import 'package:book_store/Features/Book/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/core/Widgets/custom_appbar.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BookViewBody(),
          CustomAppBar(
            press: () {},
          ),
        ],
      ),
    );
  }
}
