import 'package:book_store/Features/Search/Presentation/Manager/search_function_cubit/search_function_cubit.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchFunctionCubit, SearchFunctionState>(
        builder: (context, state) {
          if (state is SearchFunctionSuccess) {
            return ListView.builder(
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
            );
          } else if (state is SearchFunctionFailure) {
            return Center(
              child: Text(
                state.errorMessage,
                style: Styles.textRegular14,
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
