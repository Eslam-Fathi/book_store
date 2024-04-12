import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: "Search",
      side: const MaterialStatePropertyAll(
        BorderSide(color: kSecondaryColor),
      ),
      backgroundColor: const MaterialStatePropertyAll(kPrimaryColor),
      overlayColor: const MaterialStatePropertyAll(kOverlayColor),
      trailing: [
        SvgPicture.asset(AssetsData.icSearch),
      ],
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 12),
      ),
    );
  }
}
