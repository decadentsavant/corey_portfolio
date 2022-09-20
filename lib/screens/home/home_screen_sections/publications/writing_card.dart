import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/models.dart';
import 'package:flutter/material.dart';

class MusingsCard extends StatelessWidget {
  const MusingsCard({
    super.key,
    required this.musings,
  });

  final WritingData musings;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            musings.name!,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(musings.source!),
          const SizedBox(height: defaultPadding),
          Text(
            musings.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
