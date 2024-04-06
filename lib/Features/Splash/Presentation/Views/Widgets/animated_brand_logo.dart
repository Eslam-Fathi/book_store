import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedBrandLogo extends StatelessWidget {
  const AnimatedBrandLogo({
    super.key,
    required this.fadeInAnimation,
    required this.slideAnimation,
  });

  final Animation<double> fadeInAnimation;
  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: fadeInAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slideAnimation,
          child: FadeTransition(
            opacity: fadeInAnimation,
            child: SvgPicture.asset(AssetsData.icBrandLogo),
          ),
        );
      },
    );
  }
}
