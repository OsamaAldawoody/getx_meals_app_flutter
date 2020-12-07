import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/services/drawer_service.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.lazyPut(() => DrawerService());
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
