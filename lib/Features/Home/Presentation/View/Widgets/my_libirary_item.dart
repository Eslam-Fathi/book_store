import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';

class MyLibiraryItem extends StatelessWidget {
  const MyLibiraryItem({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      splashFactory: InkRipple.splashFactory,
      splashColor: const Color.fromARGB(63, 112, 67, 65),
      child: Container(
        width: 95.w,
        height: 105.h,
        decoration: ShapeDecoration(
          color: const Color(0xff704341).withOpacity(.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  style: Styles.textRegular16,
                ),
                Icon(
                  icon,
                  color: kSecondaryColor,
                  size: 28.sp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
