import 'package:corey_portfolio/global_layout/responsive.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: secondaryColor,
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(.13),
            spreadRadius: 3,
            blurRadius: 10,
            // offset: const Offset(3,3),
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
            style: Theme.of(context).textTheme.subtitle2,
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
            child: const Text(
              'Read More >>',
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
