// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget(
    this.details, {
    super.key,
  });

  final FlutterErrorDetails details;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('An Error Occurred'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (details.toString().contains('go_router'))
              Column(
                children: [
                  Text(
                    '''

You probably got here because you thought to test the navigation error handling. 

Good for you, quality assurance tester!

I have configured GoRouter to create an errorBuilder but it is throwing the error below instead.

If you are familiar with GoRouter and want to help, take a look at the repo below and let me know if you see the issue!

Thanks!!

And if you are hiring, email me! 👍 decadentsavant@gmail.com
''',
                    style: TextStyle(
                      color: Colors.blue.shade300,
                      fontSize: 17,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => html.window.open(
                      'https://github.com/decadentsavant/corey_portfolio/blob/main/lib/router/app_router.dart',
                      '_blank',
                    ),
                    child: const Text(
                      'https://github.com/decadentsavant/corey_portfolio/blob/main/lib/router/app_router.dart',
                    ),
                  ),
                  const SizedBox(
                    height: Sizes.p48,
                  )
                ],
              )
            else
              const SizedBox(),
            Center(
              child: Text(
                details.toString(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
