import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/madeira.jpg',
            fit: BoxFit.cover,
          ),
          ColoredBox(
            color: PortfolioColors.bgColor.withOpacity(0.55),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Looking forward to a career in software!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headlineMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                // const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    onPressed: _sendEmail,
                    style: TextButton.styleFrom(
                      foregroundColor: PortfolioColors.darkColor,
                      backgroundColor: PortfolioColors.primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding * 2,
                        vertical: defaultPadding,
                      ),
                    ),
                    child: const Text(
                      'Share Link with Hiring Manager',
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _sendEmail() {
  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
        .join('&');
  }

  final emailLaunchUri = Uri(
    scheme: 'mailto',
    path: '',
    query: encodeQueryParameters(<String, String>{
      'cc': 'corey.stewart@mostlearned.com',
      'subject': "Developer's Portfolio",
      'body':
          'This developer looks great! Please reach out to him: \n\nhttps://coreysexquisiteportfolio.web.app/',
    }),
  );
  launchUrl(emailLaunchUri);
}
