import 'package:flutter/material.dart';

class XGradientDivider extends StatelessWidget {
  final List<Color> colors;
  final double thickness;
  final double padding;
  final bool isVertical;

  const XGradientDivider({
    Key key,
    @required this.colors,
    this.thickness = 1,
    this.padding = 5,
    this.isVertical = false,
  }) : super(key: key);

  factory XGradientDivider.white() {
    return XGradientDivider(
      colors: [
        Colors.transparent,
        Colors.white24,
        Colors.white38,
        Colors.white38,
        Colors.white38,
        Colors.white38,
        Colors.white38,
        Colors.white38,
        Colors.white24,
        Colors.transparent,
      ],
    );
  }

  factory XGradientDivider.whiteVertical() {
    return XGradientDivider(
      isVertical: true,
      colors: [
        Colors.transparent,
        Colors.white24,
        Colors.white38,
        Colors.white38,
        Colors.white54,
        Colors.white54,
        Colors.white54,
        Colors.white54,
        Colors.white38,
        Colors.white38,
        Colors.white24,
        Colors.transparent,
      ],
    );
  }

  factory XGradientDivider.left() {
    return XGradientDivider(
      colors: [
        Colors.white54,
        Colors.white54,
        Colors.white54,
        Colors.white38,
        Colors.white38,
        Colors.white24,
        Colors.transparent,
      ],
    );
  }

  factory XGradientDivider.right() {
    return XGradientDivider(
      colors: [
        Colors.transparent,
        Colors.white24,
        Colors.white38,
        Colors.white38,
        Colors.white54,
        Colors.white54,
        Colors.white54,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: isVertical ? 1 : 0,
      child: Container(
        padding: EdgeInsets.only(top: padding, bottom: padding),
        height: thickness,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(0),
            colors: colors,
          ),
        ),
      ),
    );
  }
}
