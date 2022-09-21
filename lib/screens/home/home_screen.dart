import 'package:corey_portfolio/screens/home/home_screen_sections/hero_banner/hero_banner_stack.dart';
import 'package:corey_portfolio/screens/home/home_screen_sections/proficiencies/proficiencies.dart';
import 'package:corey_portfolio/screens/home/home_screen_sections/projects/my_projects.dart';
import 'package:corey_portfolio/screens/home/home_screen_sections/publications/writings.dart';
import 'package:corey_portfolio/screens/home/homle_skeleton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeSkeleton(
      children: [
        HeroBanner(),
        ProjectsSection(),
        Skills(),
        WritingsSection(),
      ],
    );
  }
}
