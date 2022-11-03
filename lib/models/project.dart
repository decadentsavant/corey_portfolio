// ignore_for_file: lines_longer_than_80_chars

class Project {
  Project({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.url,
    required this.gitHubLocation,
  });
  final String title, subtitle, description, url, gitHubLocation;
}

List<Project> portfolioProjects = [
  Project(
    title: 'Responsive Web Portfolio',
    subtitle: 'This site!',
    description:
        'This site! Built for Flutter web, this fun and informative portfolio showcases numerous projects utilizing a dazzling array of technologies.',
    url: 'responsivePortfolio',
    gitHubLocation: 'https://github.com/decadentsavant/corey_portfolio',
  ),
  Project(
    title: 'Most Learned',
    subtitle: 'Mobile App',
    description:
        'A mobile application (Android & iOS) to facilitate learning. I initially hired a developer from Upwork to create a simple Chrome extension with the functionality within this app.',
    url: 'mostLearnedMobileApp',
    gitHubLocation: 'https://github.com/decadentsavant/ml_app',
  ),
  Project(
    title: 'Back-End Application',
    subtitle: 'Dart Frog',
    description:
        "A back-end application utilizing the Dart Frog framework. Flutter being my entrypoint into programming, most of my experience was using said UI development kit. Desiring to know more about back-end development and RESTful APIs, I took a detour from UI work and explored Very Good Venture's Dart Frog framework.",
    url: 'backEndDartFrog',
    gitHubLocation: 'https://github.com/decadentsavant/dart_frog_playground_firebase',
  ),
  Project(
    title: 'Blockchain Chat',
    subtitle: 'Flutter Decentralized App',
    description:
        'Today we gonna build messing/chat app #ui using #flutter that runs both Android and iOS devices also has a dark and light theme. We create in total 4 screens all of that support both Dark Theme and Light Theme. At first, we design a welcome screen that contains an image with a tag line also has a skip button.',
    url: 'blockchainChat',
    gitHubLocation: 'https://github.com/decadentsavant/flutter_dapp',
  ),
  Project(
      title: 'Coin Watcher',
      subtitle: 'Crypto App',
      description:
          'In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.',
      url: 'coinWatcher',
    gitHubLocation: 'https://github.com/RobertBrunhage/flutter-riverpod-snippets',
      ),
  Project(
    title: 'Flutter Riverpod Snippets',
    subtitle: 'VSCode Extension',
    description:
        'We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.',
    url: 'riverpodSnippets',
    gitHubLocation: 'https://github.com/decadentsavant/crypto_app',
  ),
];
