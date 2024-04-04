import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_filterbar.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        const CustomFilterBar(),
        SizedBox(height: 30.h),
        const CustomListViewItem(),
      ],
    );
  }
}
