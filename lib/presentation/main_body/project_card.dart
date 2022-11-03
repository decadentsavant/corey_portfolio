import 'package:corey_portfolio/constants/constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:corey_portfolio/presentation/project_page/portfolio_page.dart';
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
      decoration: BoxDecoration(
        color: PortfolioColors.bgColor,
        boxShadow: [
          BoxShadow(
            // spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(5, 3),
            color: PortfolioColors.primaryColor.withOpacity(.2),
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
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PortfolioPage(),),),
            child: const Text(
              'Read More >>',
              style: TextStyle(color: PortfolioColors.primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
