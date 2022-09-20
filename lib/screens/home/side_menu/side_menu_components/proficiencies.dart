import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';

class Proficiencies extends StatelessWidget {
  const Proficiencies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: defaultPadding,
          ),
          child: Text(
            'Proficiencies',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const ProficiencyItem(text: 'Flutter, Dart'),
        const ProficiencyItem(text: 'Firebase, MongoDB'),
        const ProficiencyItem(text: 'Git, GitHub'),
        const ProficiencyItem(text: 'Visual Studio Code'),
        const ProficiencyItem(text: 'CLI'),
      ],
    );
  }
}

class ProficiencyItem extends StatelessWidget {
  const ProficiencyItem({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(Icons.hotel_class, size: IconTheme.of(context).size! * .8,),
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
