import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../global_layout/ui_constants.dart';


class Socials extends StatelessWidget {
  const Socials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: const Color(0xFF24242E),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/linkedin.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/github.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/twitter.svg'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
