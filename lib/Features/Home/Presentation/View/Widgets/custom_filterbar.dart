import 'package:book_store/Features/Home/Presentation/View/Widgets/filterbar_item.dart';
import 'package:flutter/material.dart';

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
