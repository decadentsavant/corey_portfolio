import 'package:corey_portfolio/screens/home/components/heighlights.dart';
import 'package:corey_portfolio/screens/home/components/home_banner.dart';
import 'package:corey_portfolio/screens/home/components/my_projects.dart';
import 'package:corey_portfolio/screens/home/components/recommendations.dart';
import 'package:corey_portfolio/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightsInfo(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
