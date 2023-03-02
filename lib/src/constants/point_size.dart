import 'package:extensive_ext/extensive_ext.dart';

class EXTSize {
  static double large = 32;

  //* MARK: - Headers
  static double get h1 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.32 : 0.256);
  }

  static double get h2 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.2 : 0.16);
  }

  static double get h3 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.16 : 0.128);
  }

  static double get h4 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.113 : 0.0906);
  }

  static double get h5Mid {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0935 : 0.075);
  }

  static double get h5 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.08 : 0.064);
  }

  static double get h6 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0666 : 0.05333);
  }

  //* MARK: - Sub-Titles
  static double get subTitle1 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0533 : 0.04222);
  }

  static double get subTitle2 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.04666 : 0.03733);
  }

  //* MARK: - Body
  static double get body1Mid {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0599 : 0.04799);
  }

  static double get body1 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0533 : 0.04266);
  }

  static double get body2 {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.04666 : 0.03733);
  }

  //* MARK: - Button
  static double get button {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.04666 : 0.03733);
  }

  //* MARK: - Other Text Sizes
  static double get caption {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.04 : 0.032);
  }

  static double get overline {
    return EXTSizeConfig.screenWidth * (isLarge ? 0.0333 : 0.02622);
  }

  // Padding Margin values
  static double value1 = 1;
  static double value2 = 2;
  static double value4 = 4;
  static double value5 = 5;
  static double value6 = 6;
  static double value8 = 8;
  static double value10 = 10;
  static double value12 = 12;
  static double value14 = 14;
  static double value15 = 15;
  static double value16 = 16;
  static double value17 = 17;
  static double value18 = 18;
  static double value20 = 20;
  static double value22 = 22;
  static double value24 = 24;
  static double value25 = 25;
  static double value26 = 26;
  static double value28 = 28;
  static double value30 = 30;
  static double value35 = 35;
  static double value40 = 40;
  static double value42_5 = 42.5;
  static double value45 = 45;
  static double value50 = 50;
  static double value75 = 75;
  static double value100 = 100;
  static int value112 = 112;
  static int value128 = 128;
  static int value192 = 192;

  static double toolbarHeight = 48;
  static final bool isLarge = EXTSizeConfig.isTabletDevice;
  static void init() {
    value2 = isLarge ? 3 : 2;
    value4 = isLarge ? 6 : 4;
    value5 = isLarge ? 7.5 : 5;
    value6 = isLarge ? 9 : 6;
    value8 = isLarge ? 12 : 8;
    value10 = isLarge ? 15 : 10;
    value12 = isLarge ? 18 : 12;
    value14 = isLarge ? 21 : 14;
    value15 = isLarge ? 22.5 : 15;
    value16 = isLarge ? 24 : 16;
    value18 = isLarge ? 27 : 18;
    value20 = isLarge ? 30 : 20;
    value22 = isLarge ? 33 : 22;
    value24 = isLarge ? 36 : 24;
    value25 = isLarge ? 37.5 : 25;
    value26 = isLarge ? 39 : 26;
    value28 = isLarge ? 42 : 28;
    value30 = isLarge ? 45 : 30;
    value35 = isLarge ? 52.5 : 35;
    value40 = isLarge ? 60 : 40;
    value42_5 = isLarge ? 63.75 : 42.5;
    value45 = isLarge ? 67.5 : 45;
    value50 = isLarge ? 75 : 50;
    value75 = isLarge ? 112.5 : 75;

    toolbarHeight = isLarge ? 84 : 48;
  }
}
