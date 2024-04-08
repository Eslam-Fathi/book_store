import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Side_Menu/Presentation/View/Widgets/menu_item.dart';
import 'package:book_store/Features/Side_Menu/Presentation/View_models/list_tile_data.dart';
import 'package:book_store/core/utils/constants.dart';

class SideMenuView extends StatefulWidget {
  const SideMenuView({
    super.key,
  });

  @override
  State<SideMenuView> createState() => _SideMenuViewState();
}

class _SideMenuViewState extends State<SideMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 288.w,
        height: double.infinity,
        color: kOverlayColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 92.h, left: 36.w),
            child: Column(
              children: [
                ...listTileData.map(
                  (listItem) {
                    return Column(
                      children: [
                        MenuItem(
                          menuItems: listTileData,
                          tileIndex: listTileData.indexOf(listItem),
                        ),
                        const Divider(),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
