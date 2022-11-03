import 'package:corey_portfolio/constants/constants.dart';
import 'package:corey_portfolio/presentation/main_body/hero_banner.dart';
import 'package:corey_portfolio/presentation/main_body/proficiencies_section.dart';
import 'package:corey_portfolio/presentation/main_body/projects_section.dart';
import 'package:corey_portfolio/presentation/main_body/publications_section.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _Skeleton(
      children: [
        HeroBanner(),
        ProjectsSection(),
        ProficienciesSection(),
        PublicationsSections(),
      ],
    );
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton({required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              title: const Text('Corey Stewart - Portfolio'),
              centerTitle: true,
              backgroundColor: PortfolioColors.bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: defaultPadding),
            child: Container(
              constraints: const BoxConstraints(maxWidth: maxWidth),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    const Expanded(
                      flex: 2,
                      child: SideMenu(),
                    ),
                  const SizedBox(width: defaultPadding),
                  Expanded(
                    flex: 7,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ...children,
                          // our footer
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
