import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/global_layout/responsive.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProjectCard extends ConsumerWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    return Container(
      decoration: BoxDecoration(
        color: colors.darkColor,
        boxShadow: [
          BoxShadow(
            // spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(5, 3),
            color: colors.primaryColor.withOpacity(.2),
          )
        ],
      ),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: Colors.white,
                ),
          ),
          const SizedBox(height: defaultPadding),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding),
          TextButton(
            onPressed: () {},
            child: Text(
              'Read More >>',
              style: TextStyle(color: colors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
