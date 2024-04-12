import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: kPrimaryColor),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(AssetsData.icMenu),
                ),
                const Spacer(),
                SvgPicture.asset(AssetsData.icBrandLogo),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kSearchView);
                  },
                  icon: SvgPicture.asset(AssetsData.icSearch),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.press,
  });

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        child: SvgPicture.asset(AssetsData.icMenu),
      ),
    );
  }
}
