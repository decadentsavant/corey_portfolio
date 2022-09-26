import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Corey Portfolio',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: const PortfolioColors().primaryColor,
        scaffoldBackgroundColor: const PortfolioColors().bgColor,
        canvasColor: const PortfolioColors().bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyle(
                color: const PortfolioColors().bodyTextColor,
              ),
              bodyText2: TextStyle(
                color: const PortfolioColors().bodyTextColor,
              ),
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
