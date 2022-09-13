import 'package:corey_portfolio/constants.dart';
import 'package:flutter/material.dart';

class HeighLight extends StatelessWidget {
  const HeighLight({
    super.key,
    required this.counter,
    this.label,
  });

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(label!, style: Theme.of(context).textTheme.subtitle2),
      ],
    );
  }
}
