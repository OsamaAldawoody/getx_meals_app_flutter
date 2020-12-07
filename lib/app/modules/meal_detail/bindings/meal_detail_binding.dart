import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/meal_detail/controllers/meal_detail_controller.dart';

class MealDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MealDetailController>(
      () => MealDetailController(),
    );
  }
}
