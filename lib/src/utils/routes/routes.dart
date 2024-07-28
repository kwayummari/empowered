import 'package:empowered/src/screens/homePage/homePage.dart';
import 'package:empowered/src/utils/routes/route-names.dart';
import 'package:empowered/src/screens/splash/splash.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: RouteNames.splash,
  routes: [
    GoRoute(
      path: RouteNames.homePage,
      builder: (context, state) => Homepage(),
    ),
    GoRoute(
      path: RouteNames.splash,
      builder: (context, state) => Splash(),
    ),
  ],
);
