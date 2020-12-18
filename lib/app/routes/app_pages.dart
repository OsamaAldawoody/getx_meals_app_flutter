import 'package:getx_meal_app/app/modules/filter/bindings/filter_binding.dart';
import 'package:getx_meal_app/app/modules/filter/controllers/filters_controller.dart';
import 'package:getx_meal_app/app/modules/filter/views/filters_view.dart';
import 'package:getx_meal_app/app/modules/settings/views/settings_view.dart';
import 'package:getx_meal_app/app/modules/settings/bindings/settings_binding.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/bindings/taps_screen_binding.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/taps_screen_view.dart';
import 'package:getx_meal_app/app/modules/root_home/views/root_home_view.dart';
import 'package:getx_meal_app/app/modules/root_home/bindings/root_home_binding.dart';

import 'package:getx_meal_app/app/modules/meal_detail/views/meal_detail_view.dart';
import 'package:getx_meal_app/app/modules/meal_detail/bindings/meal_detail_binding.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/views/category_meals_screen_view.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/bindings/category_meals_screen_binding.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/splash/splash.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(name: Routes.SPLASH, page: () => Splash()),
    GetPage(
      name: Routes.CATEGORY_MEALS_SCREEN,
      page: () => CategoryMealsScreenView(),
      binding: CategoryMealsScreenBinding(),
    ),
    GetPage(
      name: Routes.MEAL_DETAIL,
      page: () => MealDetailView(),
      binding: MealDetailBinding(),
    ),
    GetPage(
      name: Routes.MEALS_TAPS_SCREEN,
      page: () => TapsScreenView(),
      binding: TapsScreenBinding(),
    ),
    GetPage(
      name: Routes.ROOT_HOME,
      page: () => RootHomeView(),
      binding: RootHomeBinding(),
    ),
    GetPage(
      name: Routes.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.FILTERS,
      page: () => FiltersView(),
      binding: FilterBinding(),
    ),
  ];
}
