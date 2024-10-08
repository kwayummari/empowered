import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

abstract class AppConst {
  static Color primary = HexColor('#F0832E');
  static Color subPrimary = HexColor('#FFB781');
  static Color secondary = HexColor('#242F65');
  static Gradient primaryGradient = LinearGradient(
    colors: [HexColor('#150572'), HexColor('#2eb2be')],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  );
  static Color red = Colors.red;
  static Color white = HexColor('#ffffff');
  static Color black = HexColor('#000000');
  static Color grey = Colors.grey;
  static Color grey200 = Colors.grey.shade200;
  static Color grey100 = Colors.grey.shade100;
  static Color gold = HexColor('#ecb337');
  static Color brown = HexColor('#452612');
  static Color whiteOpacity = Colors.white.withOpacity(0.8);
  static Color blackOpacity = Color.fromARGB(154, 0, 0, 0);
  static Color transparent = Colors.transparent;
}
