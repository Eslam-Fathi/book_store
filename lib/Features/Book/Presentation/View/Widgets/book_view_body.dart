import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'book_action_buttons_row.dart';

class BookViewBody extends StatelessWidget {
  const BookViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Padding(
          padding: EdgeInsets.only(top: 18.h, bottom: 27.h),
          child: Image.asset(AssetsData.testBigBook),
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
      ],
    );
  }
}
