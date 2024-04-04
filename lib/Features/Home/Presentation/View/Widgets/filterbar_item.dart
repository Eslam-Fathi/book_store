import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterBarItem extends StatelessWidget {
  const FilterBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 110.w,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: kSecondaryColor),
      )),
    );
  }
}
