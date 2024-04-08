import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.press});

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(color: kPrimaryColor),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Row(
              children: [
                MenuButton(
                  press: press,
                ),
                const Spacer(),
                SvgPicture.asset(AssetsData.icBrandLogo),
                const Spacer(),
                SvgPicture.asset(AssetsData.icSearch),
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
    return InkWell(
      onTap: press,
      child: SizedBox(
        child: SvgPicture.asset(AssetsData.icMenu),
      ),
    );
  }
}
