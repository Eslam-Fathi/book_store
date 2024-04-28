import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Search/Presentation/View/Widgets/custom_search_bar.dart';

import 'package:book_store/Features/Search/Presentation/View/Widgets/search_results_list.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          children: [
            // Search bar
            CustomSearchBar(searchController: _searchController),

            const SizedBox(
              height: 16,
            ),

            // Conditionally show either Text widget or search results widget
            Visibility(
              visible: _searchController.text.isEmpty,
              replacement: const Expanded(
                child: SearchResultsList(),
              ),
              child: const Center(
                child: Text(
                  'Enter search text',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
