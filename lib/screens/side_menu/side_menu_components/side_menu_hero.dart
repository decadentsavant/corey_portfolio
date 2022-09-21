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
        color: const Color(0xFF242430),
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
              style: Theme.of(context).textTheme.subtitle2,
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
