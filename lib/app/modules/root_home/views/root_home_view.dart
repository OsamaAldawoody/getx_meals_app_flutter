import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';
import 'package:getx_meal_app/services/drawer_service.dart';
import 'package:getx_meal_app/shared/drawer.dart';

class RootHomeView extends GetView<DrawerService> {
  @override
  Widget build(BuildContext context) {
    return MainDrawer(
      innerDrawerKey: controller.innerDrawerKey,
      scaffOld: WillPopScope(
        child: Navigator(
          observers: [controller.currentRouteObserver],
          key: Get.nestedKey(2),
          initialRoute: Routes.MEALS_TAPS_SCREEN,
          onGenerateRoute: (settings) {
            var page = AppPages.routes.firstWhere(
              (element) => element.name == settings.name,
              orElse: () => null,
            );
            if (page != null) {
              return GetPageRoute(
                page: page.page,
                settings: settings,
                binding: page.binding,
                bindings: page.bindings,
              );
            }
            return null;
          },
        ),
        onWillPop: () async {
          var res = await Get.nestedKey(2).currentState.maybePop();
          if (!res) return await DrawerService.to.backDialog();
          return false;
        },
      ),
    );
  }
}
