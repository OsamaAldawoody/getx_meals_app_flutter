import 'package:flutter/material.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwitchKeyFilter extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool value;
  final Function onChange;
  SwitchKeyFilter(
      {this.title, this.subTitle, this.value = false, this.onChange});
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: AppText(
        title,
        fontFamily: ScreenUtilities.titleFont,
      ),
      subtitle: AppText(
        subTitle,
        fontSize: 32.sp,
      ),
      value: value,
      onChanged: onChange,
      activeColor: ScreenUtilities.accentColor,
    );
  }
}
