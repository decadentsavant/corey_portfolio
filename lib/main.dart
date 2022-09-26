import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/screens/home/home_screen.dart';
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
      title: 'Corey Portfolio',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: colors.primaryColor,
        scaffoldBackgroundColor: colors.bgColor,
        canvasColor: colors.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(
                color: colors.bodyTextColor,
              ),
              bodyText2: TextStyle(
                color: colors.bodyTextColor,
              ),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
