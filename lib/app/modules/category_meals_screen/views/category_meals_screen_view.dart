import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/controllers/category_meals_screen_controller.dart';
import 'package:getx_meal_app/shared/meal_item.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';

class CategoryMealsScreenView extends GetView<CategoryMealsScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MealAppBar(
        titleText: controller.args['title'],
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var meal = controller.filteredMelas[index];
          return MealItem(
            id: meal.id,
            title: meal.title,
            imageUrl: meal.imageUrl,
            affordability: meal.affordability,
            complexity: meal.complexity,
            duration: meal.duration,
          );
        },
        itemCount: controller.filteredMelas.length,
      ),
    );
  }
}
