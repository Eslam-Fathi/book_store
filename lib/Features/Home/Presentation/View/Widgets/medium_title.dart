import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/core/utils/styles.dart';

class MediumTitle extends StatelessWidget {
  const MediumTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: Text(
        title,
        style: Styles.textRegular20,
      ),
    );
  }
}
