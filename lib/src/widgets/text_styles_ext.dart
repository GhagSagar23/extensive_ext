import 'package:extensive_ext/extensive_ext.dart';

extension EXTTextStyles on TextStyle {
  //* MARK: - Font Sizes
  //? =========================================================
  TextStyle get _base => TextStyle(
        fontSize: EXTSize.h1,
        color: Colors.black,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      );

  /// __Header__
  /// * Font Size: 96 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: -1.5,
  TextStyle get h1 => _base.copyWith(
        wordSpacing: -1.5,
      );

  /// __Header 2__
  /// * Font Size: 60 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: -0.5,
  TextStyle get h2 => _base.copyWith(
        fontSize: EXTSize.h2,
        letterSpacing: -0.5,
      );

  /// __Header 3__
  /// * Font Size: 48 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  TextStyle get h3 => _base.copyWith(
        fontSize: EXTSize.h3,
      );

  /// __Header 4__
  /// * Font Size: 34 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.25,
  TextStyle get h4 => _base.copyWith(
        fontSize: EXTSize.h4,
        letterSpacing: 0.25,
      );

  /// __Header 5__
  /// * Font Size: 24 pt,
  /// * Font Weight: FontWeight.normal,
  ///   - Change it using the *copyWith* function
  /// * Letter Spacing: 0.5,
  TextStyle get h5 => _base.copyWith(
        fontSize: EXTSize.h5,
      );

  /// __Header 6__
  /// * Font Size: 20 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.5,
  TextStyle get h6 => _base.copyWith(
        fontSize: EXTSize.h6,
      );

  /// __Body Mid__
  /// * Font Size: 18 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.5,
  TextStyle get bodyMid => _base.copyWith(
        fontSize: EXTSize.body1Mid,
        letterSpacing: 0.5,
      );

  /// __Body__
  /// * Font Size: 16 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.5,
  TextStyle get body => _base.copyWith(
        fontSize: EXTSize.body1,
        letterSpacing: 0.5,
      );

  /// __Body 2__
  /// * Font Size: 14 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.5,
  TextStyle get body2 => _base.copyWith(
        fontSize: EXTSize.body2,
        letterSpacing: 0.5,
      );

  /// __Sub Title__
  /// * Font Size: 16 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  TextStyle get subTitle => _base.copyWith(
        fontSize: EXTSize.subTitle1,
      );

  /// __Sub Title 2__
  /// * Font Size: 14 pt,
  /// * Font Weight: Default is __FontWeight.normal__,
  ///   - Change it using the `copyWith` function
  /// * Letter Spacing: 0.1,
  TextStyle get subTitle2 => _base.copyWith(
        fontSize: EXTSize.subTitle2,
        letterSpacing: 0.1,
      );

  TextStyle get button => _base.copyWith(
        fontSize: EXTSize.button,
      );

  TextStyle get caption => _base.copyWith(
        fontSize: EXTSize.caption,
      );

  TextStyle get overline => _base.copyWith(
        fontSize: EXTSize.overline,
      );

  //* ================== MARK: - Font Styling ==================
  //? ==========================================================

  //* MARK: - Font Weight

  /// Thin, the least thick
  TextStyle get w100 => copyWith(
        fontWeight: FontWeight.w100,
      );

  /// Extra-light
  TextStyle get w200 => copyWith(
        fontWeight: FontWeight.w200,
      );

  /// Light
  TextStyle get w300 => copyWith(
        fontWeight: FontWeight.w300,
      );

  /// Normal / regular / plain
  TextStyle get w400 => copyWith(
        fontWeight: FontWeight.w400,
      );

  /// Medium
  TextStyle get w500 => copyWith(
        fontWeight: FontWeight.w500,
      );

  /// Semi-bold
  TextStyle get w600 => copyWith(
        fontWeight: FontWeight.w600,
      );

  /// Bold
  TextStyle get w700 => copyWith(
        fontWeight: FontWeight.w700,
      );

  /// Extra-bold
  TextStyle get w800 => copyWith(
        fontWeight: FontWeight.w800,
      );

  /// Black, the most thick
  TextStyle get w900 => copyWith(
        fontWeight: FontWeight.w900,
      );

  /// The default font weight.
  TextStyle get normal => copyWith(
        fontWeight: FontWeight.normal,
      );

  /// A commonly used font weight that is heavier than normal.
  TextStyle get bold => copyWith(
        fontWeight: FontWeight.bold,
      );

  /// Use glyphs designed for slanting
  TextStyle get italic => copyWith(
        fontStyle: FontStyle.italic,
      );

  TextStyle withSpacing({
    required double spacing,
  }) =>
      copyWith(
        letterSpacing: spacing,
      );

  TextStyle get withUnderLine {
    return copyWith(decoration: TextDecoration.underline);
  }

  /// Use this key to add a shadow to the text.
  /// Example: -
  /// ```dart
  /// _textStyleObj.shadows.black;
  /// ```
  /// Will return a TextStyle object with text shadow as black.
  /// You can also change the blur radius and offset of the shadow.
  /// Example: -
  /// ```dart
  /// _textStyleObj.shadows.black.withBlurRadius(10.0).withOffset(Offset(10, 10));
  /// ```
  TextStyle withShadow({
    Color? color,
    double blurRadius = 0.0,
    Offset offset = Offset.zero,
  }) {
    final List<Shadow> existing = shadows ?? [];
    existing.add(
      Shadow(
        color: color ?? Colors.black,
        blurRadius: blurRadius,
        offset: offset,
      ),
    );
    return copyWith(
      shadows: shadows,
    );
  }

  //* MARK: - Font Color

  /// Use this key to change the color of the text.
  /// Example: -
  /// ```dart
  /// _textStyleObj.colors.black;
  /// ```
  /// Will return a TextStyle object with text color as black.
  PAATextStyleColors get colors => PAATextStyleColors(this);
}

class PAATextStyleColors {
  final TextStyle style;

  PAATextStyleColors(this.style);

  /// Returns the TextStyle with the White color
  TextStyle get white => style.colors.custom(
        color: Colors.white,
      );

  /// Returns the TextStyle with the Transparent color
  TextStyle get transparent => style.colors.custom(
        color: Colors.transparent,
      );

  /// Returns the TextStyle with the [color] passed as parameter.
  TextStyle custom({
    required Color color,
  }) =>
      style.copyWith(
        color: color,
      );
}
