import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              onTap: () {},
              leading: const SizedBox(),
              title: Text(
                "BookTitle",
                style: Styles.textRegular14,
              ),
              subtitle: Text(
                "AuthorName",
                style: Styles.textLight10.copyWith(
                  color: Colors.white54,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
