import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DownloadCV extends StatelessWidget {
  const DownloadCV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            Text(
              'DOWNLOAD CV',
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset('assets/icons/download.svg')
          ],
        ),
      ),
    );
  }
}
