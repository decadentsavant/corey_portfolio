import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/global_layout/responsive.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/proficiencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Proficiencies',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: defaultPadding / 3),
          const Responsive(
            mobile: StaggeredProficienciesGridView(crossAxisCount: 2),
            mobileLarge: StaggeredProficienciesGridView(crossAxisCount: 2),
            tablet: StaggeredProficienciesGridView(crossAxisCount: 3),
            desktop: StaggeredProficienciesGridView(crossAxisCount: 4),
          ),
        ],
      ),
    );
  }
}

class StaggeredProficienciesGridView extends StatelessWidget {
  const StaggeredProficienciesGridView({
    required this.crossAxisCount,
    super.key,
  });

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: defaultPadding / 3,
      crossAxisSpacing: defaultPadding,
      itemCount: proficiencies.length,
      itemBuilder: (context, index) => ProficiencyItem(
        proficiencyData: proficiencies[index],
      ),
    );
  }
}

class ProficiencyItem extends ConsumerWidget {
  const ProficiencyItem({
    super.key,
    required this.proficiencyData,
  });

  final ProficiencyData proficiencyData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.hotel_class,
            color: colors.primaryColor,
            size: IconTheme.of(context).size! * .8,
          ),
          const SizedBox(width: defaultPadding / 2),
          Text(proficiencyData.text),
        ],
      ),
    );
  }
}
