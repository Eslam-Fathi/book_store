import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'book_action_button.dart';

class BookActionButtonsRow extends StatelessWidget {
  const BookActionButtonsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 135.w,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BookActionButton(icName: AssetsData.icUpload),
          BookActionButton(icName: AssetsData.icStarOutlined),
          BookActionButton(icName: AssetsData.icBookmark),
        ],
      ),
    );
  }
}
