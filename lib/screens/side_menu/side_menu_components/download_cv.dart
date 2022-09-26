import 'package:corey_portfolio/global_layout/portfolio_colors.dart';
import 'package:corey_portfolio/global_layout/ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DownloadCV extends ConsumerWidget {
  const DownloadCV({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colors = ref.watch(portfolioColorsProvider);
    return TextButton(
      onPressed: () {},
      child: FittedBox(
        child: Row(
          children: [
            Text(
              'DOWNLOAD RESUME',
              style: TextStyle(color: colors.redColor),
            ),
            const SizedBox(width: defaultPadding / 2),
            SvgPicture.asset('assets/icons/download.svg')
          ],
        ),
      ),
    );
  }
}
