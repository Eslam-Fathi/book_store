import 'package:book_store/Features/splash/Presenation/Views/Widgets/animated_brand_logo.dart';
import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SplasgViewBody extends StatefulWidget {
  const SplasgViewBody({super.key});

  @override
  State<SplasgViewBody> createState() => _SplasgViewBodyState();
}

class _SplasgViewBodyState extends State<SplasgViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> fadeInAnimation;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    // Fade in animation
    fadeInAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(animationController);

    // Slide animation
    slideAnimation = Tween<Offset>(
      begin: const Offset(0, .5),
      end: Offset.zero,
    ).animate(animationController);

    // Start the animation
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 300,
          height: 300,
          child: Image.asset(AssetsData.logo),
        ),
        AnimatedBrandLogo(
          fadeInAnimation: fadeInAnimation,
          slideAnimation: slideAnimation,
        ),
      ],
    );
  }
}
