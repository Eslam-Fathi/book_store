import 'package:book_store/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplasgViewBody extends StatelessWidget {
  const SplasgViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
      ],
    );
  }
}