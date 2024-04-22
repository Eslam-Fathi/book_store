import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:book_store/Features/Home/Data/Models/book_model/book_model.dart';
import 'package:book_store/Features/Home/Data/Repos/home_repo_impl.dart';
import 'package:book_store/Features/Home/Presentation/Manager/Related_Books_cubit/related_books_cubit.dart';
import 'package:book_store/Features/Home/Presentation/View/book_view.dart';
import 'package:book_store/Features/Home/Presentation/View/home_screen.dart';
import 'package:book_store/Features/Home/Presentation/View/related_books_view.dart';
import 'package:book_store/Features/Search/Presentation/View/search_view.dart';
import 'package:book_store/Features/Splash/Presentation/View/splash_view.dart';
import 'package:book_store/core/Services/service_locator.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kHomeView = '/HomeView';
  static const String kBookView = '/BookView';
  static const String kSearchView = '/SearchView';
  static const String kRelatedView = '/RelatedView';

  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: kSplashView,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) =>
                RelatedBooksCubit(getServiceLocator.get<HomeRepoImpl>()),
            child: BookView(
              book: state.extra as BookModel,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kRelatedView,
        builder: (BuildContext context, GoRouterState state) {
          return const RelatedBooksView();
        },
      ),
    ],
  );
}
