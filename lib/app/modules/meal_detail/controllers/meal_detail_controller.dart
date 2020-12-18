import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/models/meal.dart';

class MealDetailController extends GetxController {
  RxBool isFavorite = false.obs;
  String id;
  Meal selectedMeal;

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments as String;
    selectedMeal =
        DataService.to.filteredMeals.firstWhere((meal) => meal.id == id);
  }
}
