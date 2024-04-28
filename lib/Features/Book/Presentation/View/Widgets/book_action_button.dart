import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({
    super.key,
    required this.icName,
  });

  final String icName;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        icName,
        height: 24.h,
        width: 24.w,
      ),
    );
  }
}
