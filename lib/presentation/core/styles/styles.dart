import 'package:flutter/material.dart';
import 'package:clients/presentation/core/extensions/color_extensions.dart';

// Utils
const double kIconButtonWidth = 48;

// Colors

const Map<int, Color> kMapRedXefi = {
  50: Color.fromRGBO(207, 40, 51, 0.1),
  100: Color.fromRGBO(207, 40, 51, 0.2),
  200: Color.fromRGBO(207, 40, 51, 0.3),
  300: Color.fromRGBO(207, 40, 51, 0.4),
  400: Color.fromRGBO(207, 40, 51, 0.5),
  500: Color.fromRGBO(207, 40, 51, 1),
  600: Color.fromRGBO(207, 40, 51, 0.7),
  700: Color.fromRGBO(207, 40, 51, 0.8),
  800: Color.fromRGBO(207, 40, 51, 0.9),
  900: Color.fromRGBO(207, 40, 51, 1.0),
};

const MaterialColor kPrimarySwitchXefi = MaterialColor(0xFFCF2833, kMapRedXefi);

final MaterialColor kPrimarySwatchClear = kBackgroundColor.toMaterialColor;
final MaterialColor kPrimarySwatchDark =
    kBackgroundLogoLeftColor.toMaterialColor;

const Color kBackgroundColor = Color(0xFF343434);
const Color kBackgroundLogoLeftColor = Color(0xFF414141);
const Color kBackgroundLogoRightColor = Color(0xFF2D2C2C);
const Color kTextFieldBackground = Color(0xFF262626);
const Color kTextFieldBackgroundDarkGrey = Color(0xFF1F1F1F);
const Color kRedXefi = Color(0xFFCF2833);
const Color kDarkGrey = Color(0xFF636363);
const Color kMidGrey = Color(0xFF909090);
const Color kLightGrey = Color(0xFFD9D9D9);
const Color kSubtleGrey = Color(0xFFF2F2F2);
const Color kGreenStatus = Color(0xFF59B761);
const Color kDarkGreenStatus = Color(0xFF00a10d);
const Color kOrangeStatus = Color(0xFFFFAF54);
const Color kDarkOrangeStatus = Color(0xFFFFBB00);
const Color kRedStatus = Color(0xFFCF2833);
const Color kYellowStatus = Color(0xFFE9E063);

// Fonts

// Font Families
const String kFontRoboto = 'Roboto';
const String kFontRobotoBold = 'RobotoBold';
const String kFontRobotoCondensedBold = 'RobotoCondensedBold';

// TextStyles

double defaultWhiteOpacity = 0.8;

const TextStyle kTitleStyle = TextStyle(
  fontSize: 26,
  fontFamily: kFontRoboto,
);

const TextStyle kTitleTwoStyle = TextStyle(
  fontSize: 18,
  fontFamily: kFontRoboto,
);

const TextStyle kTitleThreeStyle = TextStyle(
  fontSize: 15,
  fontFamily: kFontRoboto,
  fontWeight: FontWeight.w700,
);

const TextStyle kTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: kFontRoboto,
);

const TextStyle kTextSmallStyle = TextStyle(
  fontSize: 13,
  fontFamily: kFontRoboto,
);

const TextStyle kTextStyleSub = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w400,
);

const TextStyle kTabTextStyle = TextStyle(
  fontSize: 14,
  fontFamily: kFontRobotoCondensedBold,
);

const TextStyle kLabelFormStyle = TextStyle(
  fontSize: 15,
  fontFamily: kFontRoboto,
);

const TextStyle kButtonText = TextStyle(
  fontSize: 12,
  fontFamily: kFontRobotoCondensedBold,
);

const TextStyle kRedButtonText = TextStyle(
  fontSize: 16,
  fontFamily: kFontRobotoCondensedBold,
  color: kRedXefi,
);

const TextStyle kButtonTextXefiRed = TextStyle(
  fontSize: 16,
  fontFamily: kFontRobotoCondensedBold,
  color: kRedXefi,
);

const TextStyle kGraphLabel = TextStyle(
  fontSize: 11,
  fontFamily: kFontRobotoCondensedBold,
);

const TextStyle kSubTitleItalic = TextStyle(
  fontSize: 12,
  fontFamily: kFontRoboto,
  fontStyle: FontStyle.italic,
  color: kMidGrey,
);
