import 'package:book_store/Features/Search/Data/Repos/search_repo_impl.dart';
import 'package:book_store/Features/Search/Presentation/Manager/search_function_cubit/search_function_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:book_store/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Featured_Books_cubit/featured_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Newest_Books_cubit/newest_books_cubit.dart';
import 'package:book_store/core/Services/service_locator.dart';
import 'package:book_store/core/Theme/theme.dart';
import 'package:book_store/core/utils/app_router.dart';

void main() {
  setupServiceLocator();
  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getServiceLocator.get<HomeRepoImpl>())
                ..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getServiceLocator.get<HomeRepoImpl>())
                ..getNewestBooks(),
        ),
        BlocProvider(
          create: (context) =>
              SearchFunctionCubit(getServiceLocator.get<SearchRepoImpl>())
                ..searchForBooks(''),
        ),
      ],
      child: ScreenUtilInit(
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: themeData,
          );
        },
        designSize: const Size(360, 800),
      ),
    );
  }
}
