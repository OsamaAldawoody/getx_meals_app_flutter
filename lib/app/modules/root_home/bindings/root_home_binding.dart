import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/root_home/controllers/root_home_controller.dart';

class RootHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootHomeController>(
      () => RootHomeController(),
    );
  }
}
