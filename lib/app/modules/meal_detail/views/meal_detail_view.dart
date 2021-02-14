import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/app/modules/meal_detail/controllers/meal_detail_controller.dart';
import 'package:getx_meal_app/app/modules/meal_detail/views/widgets/my_container.dart';
import 'package:getx_meal_app/app/modules/meal_detail/views/widgets/title_section.dart';
import 'package:getx_meal_app/services/cash_service/cash_service.dart';
import 'package:getx_meal_app/services/cash_service/favorite/favorite_meal.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';

class MealDetailView extends GetView<MealDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MealAppBar(
        titleText: controller.selectedMeal.title,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              controller.selectedMeal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            TitleSection('ingredients'),
            MyContainer(
              child: ListView.builder(
                itemCount: controller.selectedMeal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      controller.selectedMeal.ingredients[index],
                    ),
                  ),
                ),
              ),
            ),
            TitleSection('steps'),
            MyContainer(
              child: ListView.builder(
                itemCount: controller.selectedMeal.steps.length,
                itemBuilder: (
                  ctx,
                  index,
                ) =>
                    Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          '# ${index + 1}',
                        ),
                        backgroundColor: ScreenUtilities.primaryColor,
                      ),
                      title: Text(controller.selectedMeal.steps[index]),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Obx(
          () => Icon(
            controller.isFavorite.value ? Icons.star : Icons.star_border,
            color: ScreenUtilities.black,
          ),
        ),
        backgroundColor: ScreenUtilities.accentColor,
        onPressed: () {
          FavoriteMealService.to.setToFavorites(
            FavoriteMeal(
              title: controller.selectedMeal.title,
              imageUrl: controller.selectedMeal.imageUrl,
            ),
          );
          !controller.isFavorite.value;
          if (controller.isFavorite.value) {
            DataService.to.favoriteMeals.add(controller.selectedMeal);
          } else {
            int existingMealIndex = DataService.to.favoriteMeals
                .indexWhere((meal) => meal.id == controller.selectedMeal.id);
            DataService.to.favoriteMeals.remove(controller.selectedMeal);
            Get.back(id: 2);
          }
        },
      ),
    );
  }
}
