import 'package:book_store/Features/Side_Menu/Presentation/View/side_menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideMenuAnimatedPosition extends StatelessWidget {
  const SideMenuAnimatedPosition({
    super.key,
    required this.isSideMenuClosed,
  });

  final bool isSideMenuClosed;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 250),
      curve: Curves.fastOutSlowIn,
      left: isSideMenuClosed ? -290 : 0,
      height: MediaQuery.of(context).size.height,
      width: 250.w,
      child: const SideMenuView(),
    );
  }
}
