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
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: colors.darkColor.withAlpha(50),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
