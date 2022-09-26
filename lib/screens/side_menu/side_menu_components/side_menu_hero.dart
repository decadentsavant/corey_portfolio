import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SideMenuHero extends ConsumerWidget {
  const SideMenuHero({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    return AspectRatio(
      aspectRatio: 1.23,
      child: ColoredBox(
        color: colors.darkColor.withAlpha(50),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/headshot_small.png'),
            ),
            const Spacer(),
            Text(
              'Corey Stewart',
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            const Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
