import 'package:flutter/material.dart';

/// Permet d'afficher un Divider avec un style dégradé
/// ```
/// GradientDivider(
///   colors: [
///     Colors.white10,
///     Colors.white38,
///     Colors.white70,
///     Colors.white,
///     Colors.white,
///     Colors.white,
///     Colors.white,
///     Colors.white,
///     Colors.white,
///     Colors.white70,
///     Colors.white38,
///     Colors.white10,
///   ],
///   isVertical: false,
///   margin: 10,
///   thickness: 2,
/// ),
/// ```
class GradientDivider extends StatelessWidget {
  final List<Color> colors;
  final double thickness;
  final double margin;
  final bool isVertical;

  const GradientDivider({
    key,
    @required this.colors,
    this.thickness = 1,
    this.margin = 5,
    this.isVertical = false,
  }) : super(key: key);

  /// Permet d'afficher un Divider avec un style dégradé
  /// ```
  /// GradientDivider.color(
  ///   color: Colors.amber,
  /// ),
  /// ```
  factory GradientDivider.color({
    @required Color color,
    double thickness = 1,
    double margin = 5,
    bool isVertical = false,
  }) {
    return GradientDivider(
      thickness: thickness,
      margin: margin,
      isVertical: isVertical,
      colors: [
        color.withOpacity(0.1),
        color.withOpacity(0.5),
        color.withOpacity(0.75),
        color.withOpacity(1),
        color.withOpacity(1),
        color.withOpacity(1),
        color.withOpacity(1),
        color.withOpacity(1),
        color.withOpacity(0.75),
        color.withOpacity(0.5),
        color.withOpacity(0.1),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: isVertical ? 1 : 0,
      child: Container(
        margin: EdgeInsets.only(top: margin, bottom: margin),
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
