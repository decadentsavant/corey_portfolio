import 'package:corey_portfolio/constants/constants.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_components/contact_information.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_components/download_cv.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_components/side_menu_hero.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_components/sized_box_and_divider.dart';
import 'package:corey_portfolio/presentation/side_menu/side_menu_components/socials.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const SideMenuHero(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: const <Widget>[
                    ContactInformation(),
                    SizedBoxAndDivider(),
                    Socials(),
                    SizedBoxAndDivider(),
                    DownloadCV(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
