import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class PortfolioColors extends ColorOptions {
  PortfolioColors();

  Color primaryColor = ColorOptions.autumnYellow;
  Color secondaryColor = ColorOptions.autumnGreen;
  Color darkColor = ColorOptions.fujiGray;
  Color bodyTextColor = ColorOptions.fujiGray;
  Color bgColor = ColorOptions.winterBlue;
   
  void toggle() {
    const colorList = ColorOptions.colorOptionsList;
    print('primary before is $primaryColor');
    primaryColor = colorList[randomIndexFromList(colorList)];
    print('primary after is $primaryColor');
    secondaryColor = colorList[randomIndexFromList(colorList)];
    darkColor = colorList[randomIndexFromList(colorList)];
    bodyTextColor = colorList[randomIndexFromList(colorList)];
    bgColor = colorList[randomIndexFromList(colorList)];
  }
}

int randomIndexFromList(List<dynamic> list) => Random().nextInt(list.length);

abstract class ColorOptions {
  static const colorOptionsList = <Color>[
    fujiWhite,
    oldWhite,
    sumiInk0,
    sumiInk1,
    sumiInk2,
    sumiInk3,
    sumiInk4,
    waveBlue1,
    waveBlue2,
    winterGreen,
    winterYellow,
    winterRed,
    winterBlue,
    autumnGreen,
    autumnRed,
    autumnYellow,
    samuraiRed,
    roninYellow,
    waveAqua1,
    dragonBlue,
    fujiGray,
    springViolet1,
    oniViolet,
    crystalBlue,
    springViolet2,
    springBlue,
    lightBlue,
    waveAqua2,
    springGreen,
    boatYellow1,
    boatYellow2,
    carpYellow,
    sakuraPink,
    waveRed,
    peachRed,
    surimiOrange,
    katanaGray,
  ];

  static const fujiWhite = Color(0xffDCD7BA);
  static const oldWhite = Color(0xffC8C093);
  static const sumiInk0 = Color(0xff16161D);
  static const sumiInk1 = Color(0xff1F1F28);
  static const sumiInk2 = Color(0xff2A2A37);
  static const sumiInk3 = Color(0xff363646);
  static const sumiInk4 = Color(0xff54546D);
  static const waveBlue1 = Color(0xff223249);
  static const waveBlue2 = Color(0xff2D4F67);
  static const winterGreen = Color(0xff2B3328);
  static const winterYellow = Color(0xff49443C);
  static const winterRed = Color(0xff43242B);
  static const winterBlue = Color(0xff252535);
  static const autumnGreen = Color(0xff76946A);
  static const autumnRed = Color(0xffC34043);
  static const autumnYellow = Color(0xffDCA561);
  static const samuraiRed = Color(0xffE82424);
  static const roninYellow = Color(0xffFF9E3B);
  static const waveAqua1 = Color(0xff6A9589);
  static const dragonBlue = Color(0xff658594);
  static const fujiGray = Color(0xff727169);
  static const springViolet1 = Color(0xff938AA9);
  static const oniViolet = Color(0xff957FB8);
  static const crystalBlue = Color(0xff7E9CD8);
  static const springViolet2 = Color(0xff9CABCA);
  static const springBlue = Color(0xff7FB4CA);
  static const lightBlue = Color(0xffA3D4D5);
  static const waveAqua2 = Color(0xff7AA89F);
  static const springGreen = Color(0xff98BB6C);
  static const boatYellow1 = Color(0xff938056);
  static const boatYellow2 = Color(0xffC0A36E);
  static const carpYellow = Color(0xffE6C384);
  static const sakuraPink = Color(0xffD27E99);
  static const waveRed = Color(0xffE46876);
  static const peachRed = Color(0xffFF5D62);
  static const surimiOrange = Color(0xffFFA066);
  static const katanaGray = Color(0xff717C7C);
}
