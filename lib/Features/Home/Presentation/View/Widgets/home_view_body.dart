import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_appbar.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/custom_filterbar.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_book_item.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/featured_collections_listview.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/medium_title.dart';
import 'package:book_store/Features/Home/Presentation/View/Widgets/my_libirary_list.dart';
import 'package:book_store/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const CustomFilterBar(),
          SizedBox(height: 30.h),
          const FeaturedCollectionsListView(
            height: 150,
            width: 309,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Text(
              "My Libirary",
              style: TextStyle(
                fontSize: 16.sp,
                fontFamily: Styles.titleMedium.fontFamily,
                color: kSecondaryColor,
              ),
            ),
          ),
          const MyLibiraryWidgetList(),
          const MediumTitle(title: 'AudioBooks'),
          const FeaturedBookItem(
            width: 135,
            height: 230,
          ),
          const MediumTitle(title: 'Recently Added'),
          SizedBox(
            height: 100.h,
          ),
          const MediumTitle(title: 'Recommended'),
          SizedBox(
            height: 100.h,
          )
        ],
      ),
    );
  }
}
