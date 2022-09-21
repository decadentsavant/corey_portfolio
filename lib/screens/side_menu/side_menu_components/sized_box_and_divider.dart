import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';

class SizedBoxAndDivider extends StatelessWidget {
  const SizedBoxAndDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(height: defaultPadding),
        Divider(),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
