import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/screens/home/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        // main background color
        scaffoldBackgroundColor: colors.bgColor,
        // drawer background color
        canvasColor: colors.bgColor,
        // text Colors
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: colors.bodyTextColor,)
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
      home: const HomeScreen(),
    );
  }
}
