import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Search/Presentation/View/Widgets/custom_search_bar.dart';

import 'package:book_store/Features/Search/Presentation/View/Widgets/search_results_list.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: const Column(
          children: [
            // Search bar
            CustomSearchBar(),

            SizedBox(
              height: 16,
            ),

            // Search results

            SearchResultsList(),
          ],
        ),
      ),
    );
  }
}
