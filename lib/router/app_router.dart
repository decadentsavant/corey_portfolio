import 'package:corey_portfolio/presentation/home_screen.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  project,
  publications,
}

final goRouter =
    GoRouter(initialLocation: '/', debugLogDiagnostics: true, routes: [
  GoRoute(
    path: '/',
    name: AppRoute.home.name,
    builder: (context, state) => const HomeScreen(),
  ),
]);
