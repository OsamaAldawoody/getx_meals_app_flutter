import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/controllers/category_meals_screen_controller.dart';
import 'package:getx_meal_app/app/modules/category_meals_screen/views/widgets/meal_item.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';

class CategoryMealsScreenView extends GetView<CategoryMealsScreenController> {
  @override
  Widget build(BuildContext context) {
    final args = controller.getArguments(context);
    final categoryMeals = controller.categoryMeals(args['id']);
    return Scaffold(
      appBar: MealAppBar(
        title: args['title'],
        leading: InkWell(
          onTap: () {
            Get.back();
            print('back');
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          var meal = categoryMeals[index];
          return MealItem(
            id: meal.id,
            title: meal.title,
            imageUrl: meal.imageUrl,
            affordability: meal.affordability,
            complexity: meal.complexity,
            duration: meal.duration,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
