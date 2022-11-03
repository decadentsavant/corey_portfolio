import 'package:corey_portfolio/presentation/home_screen.dart';
import 'package:corey_portfolio/presentation/project_page/project_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  project,
  publications,
}

final goRouter = GoRouter(
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
          builder: (context, state) =>
              ProjectPage(projectId: state.params['projectId']!),
          pageBuilder: (context, state) => CustomTransitionPage(
            child: ProjectPage(projectId: state.params['projectId']!),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) =>
                    FadeTransition(opacity: animation, child: child),
          ),
        ),
      ],
    ),
  ],
);
