import 'package:corey_portfolio/constants/portfolio_colors.dart';
import 'package:corey_portfolio/firebase_options.dart';
import 'package:corey_portfolio/presentation/error_screens/default_error.dart';
import 'package:corey_portfolio/router/app_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  usePathUrlStrategy();
  

  runApp(const MyApp());

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return DefaultErrorWidget(details);
  };
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      // Ensure scroll behavior is enabled across all platforms
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown,
          PointerDeviceKind.trackpad
        },
      ),
      title: 'Corey Portfolio',
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        // main background color
        scaffoldBackgroundColor: PortfolioColors.bgColor,
        // drawer background color
        canvasColor: PortfolioColors.bgColor,
        // text Colors
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: PortfolioColors.bodyTextColor,
            )
            .copyWith(
              headlineLarge: const TextStyle(
                color: Colors.white,
              ),
              headlineMedium: const TextStyle(
                color: Colors.white,
              ),
              headlineSmall: const TextStyle(
                color: Colors.white,
              ),
            ),
      ),
    );
  }
}
