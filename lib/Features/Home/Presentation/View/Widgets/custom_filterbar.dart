import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/filterbar_item.dart';

class CustomFilterBar extends StatelessWidget {
  const CustomFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        FilterBarItem(),
      ],
    );
  }
}
