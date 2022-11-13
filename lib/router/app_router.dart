import 'package:corey_portfolio/presentation/error_screens/router_error.dart';
import 'package:corey_portfolio/presentation/home_screen.dart';
import 'package:corey_portfolio/presentation/project_page/project_page.dart';
import 'package:corey_portfolio/services/analytics_service.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  project,
  publications,
}

final goRouter = GoRouter(
  observers: [
    AnalyticsService.instance.getAnalyticsObserver(),
  ],
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: 'project/:projectId',
          name: AppRoute.project.name,
          // builder: (context, state) =>
          //     ProjectPage(projectIndex: state.params['projectIndex']!),
          pageBuilder: (context, state) {
            return CustomTransitionPage(
              key: state.pageKey,
              child: ProjectPage(state.params['projectId']!),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
            );
          },
        ),
      ],
    ),
  ],
  errorBuilder: (context, state) => const RouterError(),
);
