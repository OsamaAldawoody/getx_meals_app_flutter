import 'package:flutter/material.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';

class AppText extends StatelessWidget {
  final text;
  final Color color;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  AppText(this.text,
      {this.color, this.fontSize, this.fontFamily, this.fontWeight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 22.0,
        fontFamily: fontFamily ?? ScreenUtilities.appFont,
        fontWeight: fontWeight,
      ),
    );
  }
}
