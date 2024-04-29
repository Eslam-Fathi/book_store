import 'package:book_store/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:book_store/Features/Search/Presentation/View/search_view.dart';
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
                InkWell(
                    onTap: () {
                      GoRouter.of(context).go(AppRouter.kHomeView);
                      Navigator.of(context)
                          .popUntil(ModalRoute.withName(AppRouter.kHomeView));
                    },
                    child: SvgPicture.asset(AssetsData.icBrandLogo)),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    showSearch(context: context, delegate: SearchView());
                    // context.read<SearchFunctionCubit>().searchForBooks('');
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
