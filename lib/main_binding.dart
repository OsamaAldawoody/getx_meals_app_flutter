import 'package:get/get.dart';
import 'package:getx_meal_app/services/drawer_service.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrawerService());
  }
}
