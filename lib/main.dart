import 'package:book_store/Features/Side_Menu/Presentation/View/side_menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:book_store/Features/Splash/Presentation/View/splash_view.dart';
import 'package:book_store/core/Theme/theme.dart';

void main() {
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          theme: themeData,
          home: const SplashView(),
        );
      },
      designSize: const Size(360, 800),
    );
  }
}
