import 'package:corey_portfolio/global_components/animated_progress_indicator.dart';
import 'package:flutter/material.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: 'Dart',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: 'Python',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: 'HTML',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: 'CSS',
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: 'JavaScript',
        ),
      ],
    );
  }
}
