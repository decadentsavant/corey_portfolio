// ignore_for_file: lines_longer_than_80_chars

class Project {
  Project({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.url,
    required this.gitHubLocation,
    required this.imageLocation,
  });
  final String title, subtitle, description, url, gitHubLocation;
  final List<String> imageLocation;
}

List<Project> portfolioProjects = [
  Project(
    title: 'Responsive Web Portfolio',
    subtitle: 'This website!',
    description:'''
The site showcases numerous projects, documents goals and learnings for each project, and highlights proficiencies with various tools and technologies.

Built for Flutter web, the goals were:
    * Design for a 'web first' experience
    * Be a showcased project in and of itself

--Primary Learnings--

Most applications I've developed have been designed with a 'mobile-first' appraoch. Desiring to learn more about 'web-first' design in Flutter, I was mindful to implement the following:
   * Breakpoins for various screen sizes
   * Dynmaic resizing of columns, drawer, and app bar
   * Implementing correct scrolling behavior for various drag devices (mouse, trackpad, stylus, etc.)
   * URL based navigation
   * Firebase Hosting product (Previously used the Firestore and Authentication numerous times)

 ''',
    url: 'responsivePortfolio',
    gitHubLocation: 'https://github.com/decadentsavant/corey_portfolio',
    imageLocation: [''],
  ),
  Project(
    title: 'Most Learned',
    subtitle: 'Mobile App (Work in Progress)',
    description: '''
This app began my love affair with the world of programming. 

(At it's core, the app facilitates learning through reflection and spaced repetition, and was based off my previous experience as a Learning & Development professional)

I originally spec'd out the application and hired a developer on Upwork to create it as a desire to 'scratch my own itch.' Not being entirely happy with the experience coupled with a desire to add additional functionality, I decided I would learn to build it myself.

What a journey!

--Primary Learnings--

In the beginning, I didn't understand the difference between an integer and a String. Fast forward to today and I'm able to build applications for various use cases.

Because Github only reflects the form of this application at the times it was committed to the repo, it does not reflect all of the other forms it has taken along the way. 

For example, while the Github history currently reflects the app's build with Bloc, this application was originally built in a confusing mix of UI and business logic while passing arguments among StatefulWidgets and calling setState (I didn't know what state management was!). It has also relied upon Provider and Riverpod at different points in time.

Almost everything I've learned at a theoretical level has been trialed or applied on this app as a means of practical application. I've started from scratch and rebuilt it many times.

At any rate, non-exhaustive highlights include:

1. VSCode, Android Studio, Xcode
    * various VSCode extensions

2. Git
    * primarily using Git and GitHub CLIs

3. Firebase
    * Authentication
    * Firestore

4. State Management
    * Bloc
    * Provider
    * Riverpod

5. Storage
    * Shared Preferences
    * Cloud Firestore
    * Utilized repository pattern to swap between them

6. Routing
    * FlowBuilder
    * GoRouter

8. Graphics
    * CustomPaint
    * Animations
    
7. Internal Packages
    * Created packages for auth and entries API

9. External Packages
    * equitable (utilized extensively in Bloc)
    * json_serializable & build_runner (creation of entries model)
    * url_launcher (opening external links)
    *very_good_analysiss (personal preference to utilize strongly opinionated lints as a learning tool)
    
''',
    url: 'mostLearnedMobileApp',
    gitHubLocation: 'https://github.com/decadentsavant/ml_app',
    imageLocation: [''],
  ),
  Project(
    title: 'Back-End Application',
    subtitle: 'Dart Frog',
    description: '''
This quick and dirty back end applications was created with the goal of learning more about the underpinnings of services and REST APIs.

--Primary Learnings--

* Exposed to Postman for monitoring/troubleshooting server traffic
* Utilized Very Good Venture's back end framework, Dart Frog
* Learned more about status codes, query parameters, static/dynamic routes, etc.
* Used JWT auth with middleware
* Wired up the application to Firebase Realtime Database and MongoDB

''',
    url: 'backEndDartFrog',
    gitHubLocation: 'https://github.com/decadentsavant/dart_frog_playground_firebase',
    imageLocation: ['assets/images/dfPostmanLogin.png','assets/images/dfMdUser.png', 'assets/images/dfPostmanMeal.png', 'assets/images/dfMdMeal.png', 'assets/images/dfVsCode.png'],
  ),
  Project(
    title: 'Blockchain Chat',
    subtitle: 'Flutter Decentralized App',
    description:'''
This app utilizes a locally hosted blockchain connected to a Flutter app that can send and receive messages. 

I actually have extensive experience using numerous dApps on Ethereum, some of its L2s, and Solana with non-custodial wallets. I'd even gone so far as to learn a little Solidity via the CryptoZombies courses. Therefore, I approached this project with some familiarity about blockchain technology.

This project admittedly pushed my boundaries outside of Flutter. That being said, it was incredibly interesting and I'd very much like to create a few Flutter dApps in the future and possibly deploy a couple of live contracts.

--Primary Learnings--

* Used the Ethereum Virtual Machine (EVM) development environment with a locally run blockchain; Truffle and Ganache
* Created a simple contract in Solidity
* Wired up a simple Flutter app to send and receive messages using the contract

''',
    url: 'blockchainChat',
    gitHubLocation: 'https://github.com/decadentsavant/flutter_dapp',
    imageLocation: [''],
  ),
  Project(
      title: 'Crypto Watcher',
      subtitle: 'Crypto App',
      description: '''
This application utilizes bloc, fetches data from a remote API, and displays the current prices of various coins.

-- Primary Learnings --

* Reading API documentation
* Fetching data and mapping JSON data
* Managing async events via try/catch and handling 'onData', 'onError', and 'loading' states

''',
      url: 'cryptoWatcher',
    gitHubLocation: 'https://github.com/decadentsavant/crypto_app',
    imageLocation: ['assets/images/coin_watcher_mockup.png'],
      ),
  Project(
    title: 'Flutter Riverpod Snippets',
    subtitle: 'VSCode Extension',
    description: '''
Contributing to open source is a common suggestion to new developers. 

Obstacles to getting started include: 
- having the skillset to actually make improvements
- having enough knowledge of a repo to know that it needs improvement
- knowing the basic steps to even approach the situation (will I be chastised like the first time I asked a StackOverflow question?! 😂) 

Sensing all of this, I kept an eye out for opportunities. 

When Dart 2.17 came out it introduced the super shorthand syntax. I noticed the Flutter Riverpod Snippets extension for VSCode was using the old syntax. I did some research to learn how to create snippets, located the extension’s repo, created an issue, made changes, and created the PR. 

-- Primary Learnings --

* Edited VSCode snippets (and learned to make a few of my own)
* Use GitHub to create issues and make PRs

''',
    url: 'riverpodSnippets',
    gitHubLocation: 'https://github.com/RobertBrunhage/flutter-riverpod-snippets',
    imageLocation: [''],
  ),
];
