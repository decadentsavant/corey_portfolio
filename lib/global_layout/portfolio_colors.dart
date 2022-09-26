import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

int randomIndexFromList(List<dynamic> list) => Random().nextInt(list.length);

final portfolioColorsProvider =
    StateNotifierProvider<PortfolioColorsNotifier, PortfolioColors>((ref) {
  return PortfolioColorsNotifier();
});

class PortfolioColorsNotifier extends StateNotifier<PortfolioColors> {
  PortfolioColorsNotifier([
    PortfolioColors? portfolioColors,
  ]) : super(portfolioColors ?? const PortfolioColors());

  void toggle() {
    state = PortfolioColors(
      primaryColor: ColorOptions.primaryColorOptionsList[
          randomIndexFromList(ColorOptions.primaryColorOptionsList)],
      secondaryColor: ColorOptions.secondaryColorOptionsList[
          randomIndexFromList(ColorOptions.secondaryColorOptionsList)],
      darkColor: ColorOptions.darkColorOptionsList[
          randomIndexFromList(ColorOptions.darkColorOptionsList)],
      bodyTextColor: ColorOptions.bodyTextColorOptionsList[
          randomIndexFromList(ColorOptions.bodyTextColorOptionsList)],
      bgColor: ColorOptions
          .bgColorList[randomIndexFromList(ColorOptions.bgColorList)],
      redColor: ColorOptions
          .redOptionsList[randomIndexFromList(ColorOptions.redOptionsList)],
    );
  }
}

/// A read-only description of the PortfolioColors
@immutable
class PortfolioColors {
  const PortfolioColors({
    this.primaryColor = ColorOptions.roninYellow,
    this.secondaryColor = ColorOptions.autumnGreen,
    this.darkColor = ColorOptions.sumiInk3,
    this.bodyTextColor = ColorOptions.fujiWhite,
    this.bgColor = ColorOptions.sumiInk0,
    this.redColor = ColorOptions.samuraiRed,
  });

  final Color primaryColor;
  final Color secondaryColor;
  final Color darkColor;
  final Color bodyTextColor;
  final Color bgColor;
  final Color redColor;

  @override
  String toString() {
    return '''PortfolioColors:\nprimaryColor: $primaryColor,\nsecondaryColor: $secondaryColor,\ndarkColor: $darkColor,\nheaderTextColor: $bodyTextColor,\nbgColor: $bgColor,\nredColor: $redColor''';
  }
}

@immutable
abstract class ColorOptions {
  static const bgColorList = <Color>[
    sumiInk1,
    sumiInk0,
    winterBlue,
    sumiInk2,
    waveBlue1,
    winterGreen,
  ];

  static const secondaryColorOptionsList = <Color>[
    lightBlue,
    waveAqua2,
    springGreen,
    oniViolet,
    springViolet1,
    boatYellow1,
    boatYellow2,
    carpYellow,
    autumnGreen,
    waveAqua1,
    dragonBlue,
    katanaGray,
    fujiGray,
    crystalBlue,
    springViolet2,
    springBlue,
  ];

  static const darkColorOptionsList = <Color>[
    winterRed,
    sumiInk3,
    winterYellow,
    waveBlue2,
    sumiInk4,
  ];

  static const bodyTextColorOptionsList = <Color>[
    fujiWhite,
    oldWhite,
  ];

  static const redOptionsList = <Color>[
    peachRed,
    autumnRed,
    samuraiRed,
  ];

  static const primaryColorOptionsList = <Color>[
    surimiOrange,
    autumnYellow,
    roninYellow,
    sakuraPink,
    waveRed,
  ];

  //bgColor
  static const sumiInk1 = Color(0xff1F1F28);
  static const sumiInk0 = Color(0xff16161D);
  static const winterBlue = Color(0xff252535);
  static const sumiInk2 = Color(0xff2A2A37);
  static const waveBlue1 = Color(0xff223249);
  static const winterGreen = Color(0xff2B3328);

  //darkColor
  static const winterRed = Color(0xff43242B);
  static const sumiInk3 = Color(0xff363646);
  static const winterYellow = Color(0xff49443C);
  static const waveBlue2 = Color(0xff2D4F67);
  static const sumiInk4 = Color(0xff54546D);

  //headerTextColor
  static const fujiWhite = Color(0xffDCD7BA);
  static const oldWhite = Color(0xffC8C093);

  //secondaryColor
  static const lightBlue = Color(0xffA3D4D5);
  static const waveAqua2 = Color(0xff7AA89F);
  static const springGreen = Color(0xff98BB6C);
  static const oniViolet = Color(0xff957FB8);
  static const springViolet1 = Color(0xff938AA9);
  static const boatYellow1 = Color(0xff938056);
  static const boatYellow2 = Color(0xffC0A36E);
  static const carpYellow = Color(0xffE6C384);
  static const autumnGreen = Color(0xff76946A);
  static const waveAqua1 = Color(0xff6A9589);
  static const dragonBlue = Color(0xff658594);
  static const katanaGray = Color(0xff717C7C);
  static const fujiGray = Color(0xff727169);
  static const crystalBlue = Color(0xff7E9CD8);
  static const springViolet2 = Color(0xff9CABCA);
  static const springBlue = Color(0xff7FB4CA);

  //primaryColors
  static const surimiOrange = Color(0xffFFA066);
  static const autumnYellow = Color(0xffDCA561);
  static const roninYellow = Color(0xffFF9E3B);
  static const sakuraPink = Color(0xffD27E99);
  static const waveRed = Color(0xffE46876);

  // redColors
  static const peachRed = Color(0xffFF5D62);
  static const autumnRed = Color(0xffC34043);
  static const samuraiRed = Color(0xffE82424);
}
