import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/core/Theme/theme.dart';
import 'package:book_store/core/utils/app_router.dart';

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
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: themeData,
        );
      },
      designSize: const Size(360, 800),
    );
  }
}
