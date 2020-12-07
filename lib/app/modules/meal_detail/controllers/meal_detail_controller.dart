import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/models/meal.dart';

class MealDetailController extends GetxController {
  String id = Get.arguments as String;

  Meal selectedMeal(BuildContext context) =>
      DUMMY_MEALS.firstWhere((meal) => meal.id == id);
}
