import 'package:flutter/material.dart';

import 'package:book_store/Features/Splash/Presentation/View/Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
