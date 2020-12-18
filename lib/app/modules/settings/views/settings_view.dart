import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/settings/controllers/settings_controller.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MealAppBar(
        titleText: 'Settings',
      ),
      body: Center(
        child: Text(
          'SettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
