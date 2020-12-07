import 'package:flutter/material.dart';
import 'package:flutter_inner_drawer/inner_drawer.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/services/navigator_observer.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';

class DrawerService extends GetxService {
  final GlobalKey<InnerDrawerState> innerDrawerKey =
      GlobalKey<InnerDrawerState>();
  final currentRouteObserver = FlutterCurrentRouteNavigatorObserver();
  static DrawerService get to => Get.find();

  void drawerFunction(String route) {
    innerDrawerKey.currentState.close();
    offId2(route);
  }

  Future<T> offId2<T>(String route) async {
    Route r = currentRouteObserver.route;
    if (r.settings.name == route) return null;
    return await Get.toNamed<T>(route, id: 2);
  }

  void backId2() {
    Get.back(id: 2);
  }

  Future<bool> backDialog() async {
    return await Get.defaultDialog<bool>(
      title: 'الخروج',
      titleStyle: TextStyle(color: ScreenUtilities.accentColor),
      middleText: 'هل تريد الخروج من التطبيق؟',
      buttonColor: ScreenUtilities.white,
      textConfirm: 'نعم',
      onConfirm: () {
        Get.back(result: true);
      },
      textCancel: 'لا',
      onCancel: () {},
    );
  }
}
