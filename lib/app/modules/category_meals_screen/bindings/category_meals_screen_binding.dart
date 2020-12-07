import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/controllers/category_meals_screen_controller.dart';

class CategoryMealsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryMealsScreenController>(
      () => CategoryMealsScreenController(),
    );
  }
}
