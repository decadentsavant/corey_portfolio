import 'package:corey_portfolio/constants/constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:corey_portfolio/presentation/main_body/project_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.white),
          ),
          const SizedBox(height: defaultPadding / 3),
          Text(
            // ignore: lines_longer_than_80_chars
            'Projects showcasing technical proficiencies your company can leverage',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: defaultPadding),
          const Responsive(
            mobile: StaggeredProjectGridView(crossAxisCount: 1),
            mobileLarge: StaggeredProjectGridView(crossAxisCount: 2),
            tablet: StaggeredProjectGridView(crossAxisCount: 3),
            desktop: StaggeredProjectGridView(crossAxisCount: 3),
          ),
        ],
      ),
    );
  }
}

class StaggeredProjectGridView extends StatelessWidget {
  const StaggeredProjectGridView({
    required this.crossAxisCount,
    super.key,
  });

  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: defaultPadding,
      crossAxisSpacing: defaultPadding,
      itemCount: 6,
      itemBuilder: (context, index) => ProjectCard(
        project: portfolioProjects[index],
      ),
    );
  }
}
