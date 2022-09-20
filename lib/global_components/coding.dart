import 'package:corey_portfolio/global_components/animated_progress_indicator.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Dart',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: 'Python',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: 'HTML',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: 'CSS',
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: 'JavaScript',
        ),
      ],
    );
  }
}
