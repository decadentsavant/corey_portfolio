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
      onPressed: () => _downloadFile('/assets/docs/CoreyStewartResume.docx'),
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

void _downloadFile(String url) {
  html.AnchorElement(href: url)
    ..download = url
    ..setAttribute('download', 'CoreyStewartResume.docx')
    ..click();
}
