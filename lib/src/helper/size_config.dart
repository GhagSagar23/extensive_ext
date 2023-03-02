import 'package:extensive_ext/extensive_ext.dart';

class EXTSizeConfig {
  static late MediaQueryData _mediaQueryData;
  static bool isTabletDevice = false;
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double blockSizeHorizontal = 0;
  static double blockSizeVertical = 0;
  static double safeAreaHorizontal = 0;
  static double safeAreaVertical = 0;
  static double safeAreaLeading = 0;
  static double safeAreaTrailing = 0;
  static double safeAreaTop = 0;
  static double safeAreaBottom = 0;
  static double safeBlockHorizontal = 0;
  static double safeBlockVertical = 0;

  static const double horizontalPadding = 30;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    if (screenWidth == 0) {
      screenWidth = _mediaQueryData.size.width;
    }
    if (blockSizeHorizontal == 0) {
      blockSizeHorizontal = screenWidth / 100;
    }
    if (blockSizeVertical == 0) {
      blockSizeVertical = screenHeight / 100;
    }
    if (safeAreaHorizontal == 0) {
      safeAreaHorizontal =
          _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    }
    if (screenHeight == 0) {
      screenHeight = _mediaQueryData.size.height;
    }
    if (safeAreaVertical == 0) {
      safeAreaVertical =
          _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    }
    if (safeAreaTop == 0) {
      safeAreaTop = _mediaQueryData.padding.top;
    }
    if (safeAreaBottom == 0) {
      safeAreaBottom = _mediaQueryData.padding.bottom;
    }
    if (safeAreaLeading == 0) {
      safeAreaLeading = _mediaQueryData.padding.left;
    }
    if (safeAreaTrailing == 0) {
      safeAreaTrailing = _mediaQueryData.padding.right;
    }
    if (safeBlockHorizontal == 0) {
      safeBlockHorizontal = (screenWidth - safeAreaHorizontal) / 100;
    }
    if (safeBlockVertical == 0) {
      safeBlockVertical = (screenHeight - safeAreaVertical) / 100;
    }
    isTabletDevice = ((_mediaQueryData.orientation == Orientation.portrait)
                ? screenWidth
                : screenHeight) >
            700
        ? true
        : false;
    EXTSize.init();
    // To manage font size
    // M7TextStyles.initFontSizeCalculation();
  }
}
