import 'dart:math';
import 'package:book_store/Features/Home/Presentation/View/Widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedHomeViewBody extends StatelessWidget {
  const AnimatedHomeViewBody({
    super.key,
    required this.animation,
    required this.scaleAnimation,
  });

  final Animation<double> animation;
  final Animation<double> scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(animation.value - 30 * animation.value * pi / 180),
      child: Transform.translate(
        offset: Offset(animation.value * 250.w, 0),
        child: Transform.scale(
          scale: scaleAnimation.value,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(24.r),
            ),
            child: const HomeViewBody(),
          ),
        ),
      ),
    );
  }
}
