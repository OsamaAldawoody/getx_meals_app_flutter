import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/controllers/taps_screen_controller.dart';
import 'package:getx_meal_app/shared/meal_item.dart';

class FavouriteView extends GetView<TapsScreenController> {
  @override
  Widget build(BuildContext context) {
    var favoriteMeals = DataService.to.favoriteMeals;
    return (favoriteMeals.length == 0)
        ? Center(
            child: Text(
              'there is no favorite meals - start adding some',
              style: TextStyle(fontSize: 20),
            ),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              var meal = favoriteMeals[index];
              return MealItem(
                title: meal.title,
                duration: meal.duration,
                id: meal.id,
                affordability: meal.affordability,
                complexity: meal.complexity,
                imageUrl: meal.imageUrl,
              );
            },
            itemCount: favoriteMeals.length,
          );
  }
}
