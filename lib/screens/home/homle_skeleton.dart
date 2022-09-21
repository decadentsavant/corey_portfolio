import 'package:corey_portfolio/global_layout/responsive.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/screens/side_menu/side_menu_screen.dart';
import 'package:flutter/material.dart';

class HomeSkeleton extends StatelessWidget {
  const HomeSkeleton({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
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
