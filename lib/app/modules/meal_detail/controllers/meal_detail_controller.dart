import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/models/meal.dart';
import 'package:getx_meal_app/services/cash_service/cash_service.dart';
import 'package:getx_meal_app/services/cash_service/favorite/favorite_meal.dart';

class MealDetailController extends GetxController {
  RxBool isFavorite;
  String id;
  Meal selectedMeal;
  List<FavoriteMeal> favoriteMeals;

  @override
  void onInit() {
    super.onInit();
    id = Get.arguments as String;
    selectedMeal =
        DataService.to.filteredMeals.firstWhere((meal) => meal.id == id);

    favoriteMeals = FavoriteMealService.to.box.values.toList();
  }
}
