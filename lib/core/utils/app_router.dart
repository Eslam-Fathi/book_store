import 'package:book_store/Features/Home/Presentation/View/book_view.dart';
import 'package:book_store/Features/Home/Presentation/View/home_screen.dart';
import 'package:book_store/Features/Splash/Presentation/View/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kHomeView = '/HomeView';
  static const String kBookView = '/BookView';
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
          return const BookView();
        },
      ),
    ],
  );
}
