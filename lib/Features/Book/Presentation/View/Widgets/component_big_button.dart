import 'package:book_store/core/utils/assets.dart';
import 'package:book_store/core/utils/constants.dart';
import 'package:book_store/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ComponentBigButton extends StatelessWidget {
  const ComponentBigButton({
    super.key,
    required this.fillColor,
    required this.textColor,
  });

  final Color fillColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10.r),
        child: Container(
          height: 45.h,
          width: 302.w,
          decoration: ShapeDecoration(
            color: fillColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: kSecondaryColor,
                width: 1.w,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          child: textColor == kSecondaryColor
              ? Center(
                  child: Text(
                    'Related content.',
                    style: Styles.textSimiBold16.copyWith(
                      fontFamily: GoogleFonts.openSans().fontFamily,
                      color: textColor,
                    ),
                  ),
                )
              : Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AssetsData.icReadBook),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        'Srart Reading!',
                        style: Styles.textSimiBold16.copyWith(
                          fontFamily: GoogleFonts.openSans().fontFamily,
                          color: textColor,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
