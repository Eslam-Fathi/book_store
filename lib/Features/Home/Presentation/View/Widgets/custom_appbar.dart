import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';

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
                  onPressed: () {},
                  icon: SvgPicture.asset(AssetsData.icSearch),
                ),
                // const FaIcon(
                //   FontAwesomeIcons.magnifyingGlass,
                //   size: 25,
                // ),
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
