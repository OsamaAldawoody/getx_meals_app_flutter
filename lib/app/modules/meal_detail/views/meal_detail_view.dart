import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/meal_detail/controllers/meal_detail_controller.dart';
import 'package:getx_meal_app/app/modules/meal_detail/views/widgets/my_container.dart';
import 'package:getx_meal_app/app/modules/meal_detail/views/widgets/title_section.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';

class MealDetailView extends GetView<MealDetailController> {
  @override
  Widget build(BuildContext context) {
    final selectedMeal = controller.selectedMeal(context);
    return Scaffold(
      appBar: MealAppBar(
        title: selectedMeal.title,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              selectedMeal.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            TitleSection('ingredients'),
            MyContainer(
              child: ListView.builder(
                itemCount: selectedMeal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedMeal.ingredients[index],
                    ),
                  ),
                ),
              ),
            ),
            TitleSection('steps'),
            MyContainer(
              child: ListView.builder(
                itemCount: selectedMeal.steps.length,
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
                      title: Text(selectedMeal.steps[index]),
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
        child: Icon(
          Icons.delete,
          color: ScreenUtilities.black,
        ),
        backgroundColor: ScreenUtilities.accentColor,
        onPressed: () {
          Get.back(result: controller.id);
        },
      ),
    );
  }
}
