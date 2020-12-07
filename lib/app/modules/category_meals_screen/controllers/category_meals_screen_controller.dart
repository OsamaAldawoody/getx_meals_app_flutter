import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/models/meal.dart';

class CategoryMealsScreenController extends GetxController {
  Map<String, dynamic> getArguments(BuildContext ctx) {
    return ModalRoute.of(ctx).settings.arguments as Map<String, dynamic>;
  }

  List<Meal> categoryMeals(String id) {
    return DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
  }
}
