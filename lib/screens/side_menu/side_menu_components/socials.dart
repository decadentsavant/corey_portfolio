import 'dart:html' as html;
import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Socials extends ConsumerWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    final twitter = Uri.parse('https://twitter.com/decadentsavant');


    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: colors.darkColor.withAlpha(50),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () => html.window.open('https://www.linkedin.com/in/corey-stewart-5262538/', '_blank'),
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () => html.window.open('https://github.com/decadentsavant', '_blank'),
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () => html.window.open('https://twitter.com/decadentsavant', '_blank'),
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
