// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:corey_portfolio/constants/constants.dart';
import 'package:corey_portfolio/models/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage(String projectUrl, {super.key})
      : project = portfolioProjects.firstWhere(
          (project) => project.url == projectUrl,
        );

  final Project project;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: isDesktop
              ? const EdgeInsets.symmetric(
                  horizontal: defaultPadding * 4,
                )
              : const EdgeInsets.all(
                  defaultPadding,
                ),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1080),
              child: Stack(
                children: [
                  const _BackGroundWidget(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      const _ProjectImage(),
                      const SizedBox(
                        height: defaultPadding,
                      ),
                      _ProjectTitle(project: project),
                      const SizedBox(height: defaultPadding),
                      _SubtitleGitHubRow(project: project),
                      const Divider(),
                      const SizedBox(height: defaultPadding),
                      _ProjectDescription(project: project),
                      const SizedBox(height: defaultPadding),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ProjectDescription extends StatelessWidget {
  const _ProjectDescription({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Text(
      project.description,
      style: const TextStyle(fontSize: 15),
    );
  }
}

class _SubtitleGitHubRow extends StatelessWidget {
  const _SubtitleGitHubRow({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => html.window.open(
        project.gitHubLocation,
        '_blank',
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          children: [
            Text(
              project.subtitle,
              style: Responsive.isDesktop(context)
                  ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: PortfolioColors.secondaryColor,
                      )
                  : Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: PortfolioColors.secondaryColor,
                      ),
            ),
            const SizedBox(
              width: 40,
            ),
            SvgPicture.asset(
              'assets/icons/github.svg',
              color: Colors.white70,
            ),
            const SizedBox(
              width: 15,
            ),
            const Text(
              'GitHub Repo',
              style: TextStyle(
                color: PortfolioColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectTitle extends StatelessWidget {
  const _ProjectTitle({
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Text(
      project.title,
      style: Responsive.isDesktop(context)
          ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              )
          : Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
    );
  }
}

class _ProjectImage extends StatelessWidget {
  const _ProjectImage();

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 500,
        child: Image.asset(
          'assets/images/headshot_small.png',
        ),
      ),
    );
  }
}

class _BackGroundWidget extends StatelessWidget {
  const _BackGroundWidget();

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    if (isMobile) {
      return const SizedBox();
    } else {
      return SvgPicture.asset(
        'assets/images/background.svg',
        color: Colors.white,
        width: 1440,
      );
    }
  }
}
