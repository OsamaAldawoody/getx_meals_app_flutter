import 'package:flutter/material.dart';
import 'package:getx_meal_app/services/drawer_service.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealAppBar extends AppBar {
  MealAppBar(
      {Widget title, String titleText, Widget leading, List<Widget> actions})
      : super(
          backgroundColor: ScreenUtilities.primaryColor,
          title: title ??
              AppText(
                titleText,
                color: ScreenUtilities.white,
                fontWeight: FontWeight.w900,
                fontFamily: ScreenUtilities.titleFont,
              ) ??
              '',
          leading: leading ??
              InkWell(
                onTap: () {
                  DrawerService.to.innerDrawerKey.currentState.open();
                },
                child: Icon(
                  Icons.short_text,
                  size: 60.0.w,
                ),
              ),
          actions: actions,
        );
}
/*
 centerTitle: true,
      title: 
 */
