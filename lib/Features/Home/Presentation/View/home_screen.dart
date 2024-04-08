import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeViewBody(),
          CustomAppBar(),
        ],
      ),
    );
  }
}
