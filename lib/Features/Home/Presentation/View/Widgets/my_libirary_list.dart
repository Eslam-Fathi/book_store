import 'package:flutter/material.dart';

import 'package:book_store/Features/Home/Presentation/View/Widgets/my_libirary_item.dart';

class MyLibiraryWidgetList extends StatelessWidget {
  const MyLibiraryWidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MyLibiraryItem(
          title: 'Profile',
          icon: Icons.person_2_rounded,
        ),
        MyLibiraryItem(
          title: 'Favorites',
          icon: Icons.star_border_rounded,
        ),
        MyLibiraryItem(
          title: 'History',
          icon: Icons.update_outlined,
        ),
      ],
    );
  }
}
