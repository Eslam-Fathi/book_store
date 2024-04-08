import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.icMenu),
          const Spacer(),
          SvgPicture.asset(AssetsData.icBrandLogo),
          const Spacer(),
          SvgPicture.asset(AssetsData.icSearch),
          // const FaIcon(
          //   FontAwesomeIcons.magnifyingGlass,
          //   size: 25,
          // ),
        ],
      ),
    );
  }
}
