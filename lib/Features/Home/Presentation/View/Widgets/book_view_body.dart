import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/book_action_buttons_row.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/component_big_button.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/small_book_description.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
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

              const ComponentBookButton(
                fillColor: kSecondaryColor,
                textColor: Color(0xff4A2B29),
              ),
              const ComponentBookButton(
                fillColor: Colors.transparent,
                textColor: kSecondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
