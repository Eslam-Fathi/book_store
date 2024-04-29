import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
