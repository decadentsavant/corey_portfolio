import 'package:corey_portfolio/global_layout/responsive.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:corey_portfolio/screens/home/home_screen_sections/projects/project_card.dart';
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
            tablet: StaggeredProjectGridView(crossAxisCount: 4),
            desktop: StaggeredProjectGridView(crossAxisCount: 4),
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
      itemCount: 4,
      itemBuilder: (context, index) => ProjectCard(
        project: demoProjects[index],
      ),
    );
  }
}
