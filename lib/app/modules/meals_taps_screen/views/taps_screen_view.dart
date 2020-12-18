import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/controllers/taps_screen_controller.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';

class TapsScreenView extends GetView<TapsScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MealAppBar(
        title: Obx(
          () => AppText(
            controller.title.value,
            color: ScreenUtilities.white,
            fontWeight: FontWeight.w900,
            fontFamily: ScreenUtilities.titleFont,
          ),
        ),
      ),
      body: Obx(
        () => controller.pages[controller.selectedPageIndex.value]['page'],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: ScreenUtilities.primaryColor,
          selectedItemColor: ScreenUtilities.accentColor,
          unselectedItemColor: ScreenUtilities.white,
          currentIndex: controller.selectedPageIndex.value,
          onTap: (value) => controller.selectPage(value),
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              backgroundColor: ScreenUtilities.primaryColor,
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: ScreenUtilities.primaryColor,
              icon: Icon(Icons.star),
              label: 'favorites',
            ),
          ],
        ),
      ),
    );
  }
}
