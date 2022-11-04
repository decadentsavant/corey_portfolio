import 'package:corey_portfolio/constants/sizes.dart';
import 'package:corey_portfolio/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Not found screen used for 404 errors (page not found on web)
class RouterError extends StatelessWidget {
  const RouterError({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '404 - Page Not Found',
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
              gapH32,
              SizedBox(
                height: Sizes.p48,
                child: ElevatedButton(
                  onPressed: () => context.goNamed(AppRoute.home.name),
                  child: const Text('Go Home'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
