// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:corey_portfolio/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => html.window.open('https://firebasestorage.googleapis.com/v0/b/coreysexquisiteportfolio.appspot.com/o/CoreyStewartResume.pdf?alt=media&token=68328f21-02c6-45ae-beea-5b47f9ae61c2', '_blank'),
      child: FittedBox(
        child: Row(
          children: [
            const Text(
              'DOWNLOAD RESUME',
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset('assets/icons/download.svg')
          ],
        ),
      ),
    );
  }
}
