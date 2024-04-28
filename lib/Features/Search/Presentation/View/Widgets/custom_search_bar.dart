import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/Features/Search/Presentation/Manager/search_function_cubit/search_function_cubit.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
    required this.searchController,
  });
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      controller: searchController,
      hintText: "Search",
      side: const MaterialStatePropertyAll(
        BorderSide(color: kSecondaryColor),
      ),
      backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
      overlayColor: const MaterialStatePropertyAll(kOverlayColor),
      onSubmitted: (value) {
        context
            .read<SearchFunctionCubit>()
            .searchForBooks(searchController.text);
      },
      trailing: [
        IconButton(
          onPressed: () {
            context
                .read<SearchFunctionCubit>()
                .searchForBooks(searchController.text);
          },
          icon: SvgPicture.asset(AssetsData.icSearch),
        ),
      ],
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
