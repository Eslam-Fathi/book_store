import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_action_buttons_row.dart';
import 'component_big_button.dart';
import 'small_book_description.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.h),
            child: const CustomAppBar(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h, bottom: 27.h),
            child: SizedBox(
              width: 302.w,
              height: 336.h,
              child: Image.asset(AssetsData.testBigBook),
            ),
          ),
          Text(
            "PACHINKO",
            style: Styles.textRegular24,
          ),
          Text(
            "Min Jin Lee",
            style: Styles.textRegular16,
          ),
          const BookActionButtonsRow(),
          const SmallBookDescription(),
          // Component Button

          const ComponentBigButton(
            fillColor: kSecondaryColor,
            textColor: Color(0xff4A2B29),
          ),
          const ComponentBigButton(
            fillColor: Colors.transparent,
            textColor: kSecondaryColor,
          ),
        ],
      ),
    );
  }
}
