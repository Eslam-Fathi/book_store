import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.menuItems,
    required this.tileIndex,
  });

  final List<Map> menuItems;
  final int tileIndex;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        height: 24.h,
        width: 24.w,
        child: SvgPicture.asset(menuItems[tileIndex]['icon']),
      ),
      title: Text(
        menuItems[tileIndex]['title'],
        style: Styles.textRegular14.copyWith(color: kSecondaryColor),
      ),
      onTap: menuItems[tileIndex]['route'],
    );
  }
}
