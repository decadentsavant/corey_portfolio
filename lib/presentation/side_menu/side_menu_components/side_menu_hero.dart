import 'package:corey_portfolio/constants/portfolio_colors.dart';
import 'package:flutter/material.dart';

class SideMenuHero extends StatelessWidget {
  const SideMenuHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: ColoredBox(
        color: PortfolioColors.darkColor.withAlpha(50),
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
