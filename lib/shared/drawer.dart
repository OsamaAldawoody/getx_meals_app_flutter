import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';
import 'package:getx_meal_app/services/drawer_service.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'drawer_list_tile.dart';

class MainDrawer extends GetView<DrawerService> {
  final Widget scaffOld;
  final GlobalKey innerDrawerKey;
  MainDrawer({this.innerDrawerKey, this.scaffOld});
  @override
  Widget build(BuildContext context) {
    return InnerDrawer(
      key: innerDrawerKey,
      leftAnimationType: InnerDrawerAnimation.quadratic,
      onTapClose: true,
      swipe: true,
      swipeChild: true,
      colorTransitionChild: ScreenUtilities.accentColor,
      borderRadius: 50.0,
      duration: Duration(seconds: 10),
      //colorTransitionScaffold: ScreenUtilities.accentColor,
      backgroundDecoration: BoxDecoration(color: ScreenUtilities.white),
      onDragUpdate: (value, direction) => print(direction),
      scale: IDOffset.horizontal(.8),
      tapScaffoldEnabled: false,
      offset: IDOffset.only(bottom: 0.05, right: 0.0, left: 0.0),
      leftChild: Scaffold(
        body: Column(
          children: [
            Container(
              height: 250.w,
              width: Get.width,
              padding: const EdgeInsets.all(24.0),
              color: ScreenUtilities.primaryColor,
              child: AppText(
                'Cooking UP!',
                fontSize: 60.sp,
                fontFamily: ScreenUtilities.appFont,
                color: ScreenUtilities.accentColor,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 50.w,
            ),
            DrawerListTile(
              text: 'Meals',
              icon: Icons.restaurant,
              onTap: () {
                controller.drawerFunction(Routes.MEALS_TAPS_SCREEN);
              },
            ),
            DrawerListTile(
              text: 'Settings',
              icon: Icons.settings,
              onTap: () => controller.drawerFunction(Routes.SETTINGS),
            )
          ],
        ),
      ),
      scaffold: scaffOld,
    );
  }
}
