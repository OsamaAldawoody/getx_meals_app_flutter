import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/services/cash_service/cash_service.dart';
import 'package:getx_meal_app/services/drawer_service.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DataService());
    Get.lazyPut(() => DrawerService());
    Get.put(FavoriteMealService());
  }
}
