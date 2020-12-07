import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/controllers/taps_screen_controller.dart';

class TapsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TapsScreenController>(
      () => TapsScreenController(),
    );
  }
}
