import 'dart:ui';

class ColorConstants {
  static Color primaryDarkColor = hexToColor("#bf0739"); //background: #1A8411;
  static Color whiteColor = hexToColor("#FFFFFF");
  static Color SecondaryColor = hexToColor("#D9D9D9");
  static Color LabelColor = hexToColor("#867D7D");
  static Color textFormBackGColor = hexToColor("#E8E8E8");
  static Color GuesttxtColor = hexToColor("#615D5D");

  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
