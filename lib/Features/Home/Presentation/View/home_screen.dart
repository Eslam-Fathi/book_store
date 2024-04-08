import 'package:flutter/material.dart';

import 'package:book_store/core/Widgets/custom_appbar.dart';

import 'Widgets/animated_home_view_body.dart';
import 'Widgets/side_menu_animated_position.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  bool isSideMenuClosed = true;

  late AnimationController animationController;
  late Animation<double> animation;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    initSideMenuAnimation();

    initSlideInAnimation();

    initScaleAnimation();

    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SideMenuAnimatedPosition(isSideMenuClosed: isSideMenuClosed),
          AnimatedHomeViewBody(
              animation: animation, scaleAnimation: scaleAnimation),
          CustomAppBar(
            press: () {
              if (isSideMenuClosed) {
                animationController.forward();
              } else {
                animationController.reverse();
              }
              setState(() {
                isSideMenuClosed = !isSideMenuClosed;
              });
            },
          ),
        ],
      ),
    );
  }

  Animation<double> initScaleAnimation() {
    return scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  Animation<double> initSlideInAnimation() {
    return animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );
  }

  AnimationController initSideMenuAnimation() {
    return animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }
}
