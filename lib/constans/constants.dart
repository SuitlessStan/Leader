import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Colors
Color raisedButtonColor = const Color(0xFF0DACD1);
Color logoColor = const Color(0xFF15B4E4);
Color borderTextfieldColor = const Color(0xFFCCCCCC);
Color leaderLogo = const Color(0xFF707070);
Color borderColor = const Color(0xFFF7F7F7);
Color textFields = const Color(0xFF888888);
Color textColor = const Color(0xFF8B8B8B);
Color phoneNummberColor = const Color(0xFF4A4A4A);
Color textFieldBorder = const Color(0xFFDEDEDE);
Color thinLine = const Color(0xFFDEDEDE);
Color contactsName = const Color(0xFF373737);

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;
  void init(BuildContext context) {
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}
