import 'package:corey_portfolio/presentation/home_screen.dart';
import 'package:corey_portfolio/presentation/project_page/project_page.dart';
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
            builder: (context, state) {
              final projectId = state.params['projectId']!;
              return ProjectPage(projectId: projectId); 
            },
          )
        ],),
  ],
);
