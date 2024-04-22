import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/home_view_body.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: const CustomAppBar(),
      ),
      body: const HomeViewBody(),
    );
  }
}
