import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.menuIcon),
          const Spacer(),
          SvgPicture.asset(AssetsData.brandLogo),
          const Spacer(),
          SvgPicture.asset(AssetsData.searchIcon),
          // const FaIcon(
          //   FontAwesomeIcons.magnifyingGlass,
          //   size: 25,
          // ),
        ],
      ),
    );
  }
}
