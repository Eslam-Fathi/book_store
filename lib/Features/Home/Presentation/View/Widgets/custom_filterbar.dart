import 'package:book_store/Features/Home/Presentation/View/Widgets/filterbar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilterBar extends StatelessWidget {
  const CustomFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 26.w,
      ),
      child: const Row(
        children: [
          FilterBarItem(),
        ],
      ),
    );
  }
}
