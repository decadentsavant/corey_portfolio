import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: Responsive.isDesktop(context)
              ? const EdgeInsets.all(
                  defaultPadding * 4,
                )
              : const EdgeInsets.all(
                  defaultPadding,
                ),
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: maxWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Align(
                    child: SizedBox(
                      height: 500,
                      child: Image.asset(
                        'assets/images/headshot_small.png',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    'Project Title',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: PortfolioColors.primaryColor,
                            )
                        : Theme.of(context).textTheme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: PortfolioColors.primaryColor,
                            ),
                  ),
                  const SizedBox(height: defaultPadding),
                  Text(
                    'Subtitle',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: PortfolioColors.primaryColor,
                            )
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: PortfolioColors.primaryColor,
                            ),
                  ),
                  const Divider(),
                  const SizedBox(height: defaultPadding),
                  const Text('Description'),
                  const SizedBox(height: defaultPadding),
                  const Text('Lessons Learned'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
