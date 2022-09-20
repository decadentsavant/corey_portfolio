import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/musings.dart';
import 'package:corey_portfolio/screens/home/home_screen_sections/publications/writing_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class WritingsSection extends StatelessWidget {
  const WritingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Publications',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: defaultPadding / 3),
        Text(
          'Musings that span the theoretical to the techncial',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const SizedBox(height: defaultPadding),
        const StaggeredWritingsGridView(crossAxisCount: 2)
      ],
    );
  }
}

class StaggeredWritingsGridView extends StatelessWidget {
  const StaggeredWritingsGridView({
    required this.crossAxisCount,
    super.key,
  });

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: defaultPadding,
      crossAxisSpacing: defaultPadding,
      itemCount: writingData.length,
      itemBuilder: (context, index) => MusingsCard(musings: writingData[index]),
    );
  }
}
