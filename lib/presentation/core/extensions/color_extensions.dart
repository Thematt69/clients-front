import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#" or "0x".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer(hexString);

    if (hexString.length == 10) {
      buffer.clear();
      buffer.write(hexString.replaceFirst('0x', ''));
    } else if (hexString.length == 9) {
      buffer.clear();
      buffer.write(hexString.replaceFirst('#', ''));
    }

    return Color(int.tryParse(buffer.toString(), radix: 16));
  }

  Color brightness(double intensity) {
    HSLColor hslColor = HSLColor.fromColor(this);
    // if (hslColor.saturation == 0) {
    //   return hslColor.withLightness(intensity).withHue(0).toColor();
    // }

    return hslColor.withLightness(intensity).toColor();
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = false}) =>
      '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  int toHexInt({bool leadingHashSign = false}) => int.parse(
      '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}',
      radix: 16);

  Color get complementary {
    HSLColor hslColor = HSLColor.fromColor(this);
    double value;
    if (HSLColor.fromColor(this).hue < 180) {
      value = 180;
    } else {
      value = -180;
    }

    HSLColor newColor = hslColor.withHue(HSLColor.fromColor(this).hue + value);

    return newColor.toColor();
  }

  MaterialColor get toMaterialColor {
    Map<int, Color> tempMap = {
      50: Color.fromRGBO(this.red, this.green, this.blue, 0.1),
      100: Color.fromRGBO(this.red, this.green, this.blue, 0.2),
      200: Color.fromRGBO(this.red, this.green, this.blue, 0.3),
      300: Color.fromRGBO(this.red, this.green, this.blue, 0.4),
      400: Color.fromRGBO(this.red, this.green, this.blue, 0.5),
      500: Color.fromRGBO(this.red, this.green, this.blue, 1),
      600: Color.fromRGBO(this.red, this.green, this.blue, 0.7),
      700: Color.fromRGBO(this.red, this.green, this.blue, 0.8),
      800: Color.fromRGBO(this.red, this.green, this.blue, 0.9),
      900: Color.fromRGBO(this.red, this.green, this.blue, 1.0),
    };
    return MaterialColor(this.toHexInt(), tempMap);
  }

  Map<int, Color> get toSwatch {
    return {
      50: Color.fromRGBO(this.red, this.green, this.blue, 0.1),
      100: Color.fromRGBO(this.red, this.green, this.blue, 0.2),
      200: Color.fromRGBO(this.red, this.green, this.blue, 0.3),
      300: Color.fromRGBO(this.red, this.green, this.blue, 0.4),
      400: Color.fromRGBO(this.red, this.green, this.blue, 0.5),
      500: Color.fromRGBO(this.red, this.green, this.blue, 1),
      600: Color.fromRGBO(this.red, this.green, this.blue, 0.7),
      700: Color.fromRGBO(this.red, this.green, this.blue, 0.8),
      800: Color.fromRGBO(this.red, this.green, this.blue, 0.9),
      900: Color.fromRGBO(this.red, this.green, this.blue, 1.0),
    };
  }

  String get stringToHex {
    return '${alpha.toRadixString(16).padLeft(2, '0')}'
        '${red.toRadixString(16).padLeft(2, '0')}'
        '${green.toRadixString(16).padLeft(2, '0')}'
        '${blue.toRadixString(16).padLeft(2, '0')}';
  }

  Color darker(double intensity) {
    int min;
    if (this.red < this.blue && this.red < this.green) {
      min = this.red;
    } else if (this.green < this.blue) {
      min = this.green;
    } else {
      min = this.blue;
    }

    return Color.fromRGBO(
      this.red - (min * intensity).toInt(),
      this.green - (min * intensity).toInt(),
      this.blue - (min * intensity).toInt(),
      this.opacity,
    );
    // return hslColor.withLightness(intensity).toColor();
  }
}
