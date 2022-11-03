// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: PortfolioColors.darkColor.withAlpha(50),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () => html.window.open(
                'https://www.linkedin.com/in/corey-stewart-5262538/', '_blank',),
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () =>
                html.window.open('https://github.com/decadentsavant', '_blank'),
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
