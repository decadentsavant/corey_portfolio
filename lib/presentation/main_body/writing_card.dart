import 'package:corey_portfolio/constants/constants.dart';
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
      color:  PortfolioColors.darkColor,
      width: 400,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            musings.name!,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                ),
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
