import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookButton extends StatelessWidget {
  const FeaturedBookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(10.r)),
      onTap: () {
        navigateToBook(context);
      },
      child: Container(
        height: 39.h,
        width: 111.w,
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(.08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: Center(
          child: Text(
            "Check it out!",
            style: Styles.textSimiBold16.copyWith(
              color: kSecondaryColor,
            ),
          ),
        ),
      ),
    );
  }

  void navigateToBook(context) {
    // Get.to(
    //   () => const BookView(),
    //   transition: Transition.circularReveal,
    //   duration: kTransitionDuration,
    // );
    GoRouter.of(context).push(AppRouter.kBookView);
  }
}
