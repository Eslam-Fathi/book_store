import 'package:flutter/material.dart';

import 'package:book_store/Features/Book/Presentation/View/Widgets/book_view_body.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BookViewBody(),
          CustomAppBar(),
        ],
      ),
    );
  }
}
