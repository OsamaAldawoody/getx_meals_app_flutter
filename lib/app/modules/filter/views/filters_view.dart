import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/app/modules/filter/controllers/filters_controller.dart';
import 'package:getx_meal_app/app/modules/filter/views/widgets/switch_key_filter.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/shared/meal_app_bar.dart';

class FiltersView extends GetView<FiltersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MealAppBar(
        titleText: 'filters',
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              DataService.to.filteredMeals
                  .assignAll(controller.setFilters(DataService.to.dummyMeals));
              Get.toNamed(Routes.MEALS_TAPS_SCREEN, id: 2);
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: AppText('Adjust Your Meal Selection'),
          ),
          Obx(
            () => SwitchKeyFilter(
              title: 'gluten-free',
              value: controller.filters['gluten-free'],
              subTitle: 'only include gluten free meals.',
              onChange: (value) {
                controller.filters['gluten-free'] = value;
                print(controller.filters['gluten-free']);
                print(value);
                print(controller.filters['gluten-free']);
              },
            ),
          ),
          Obx(
            () => SwitchKeyFilter(
              title: 'vegetarian',
              value: controller.filters['vegetarian'],
              subTitle: 'only include vegetarian meals.',
              onChange: (value) => controller.filters['vegetarian'] = value,
            ),
          ),
          Obx(
            () => SwitchKeyFilter(
              title: 'vegan',
              value: controller.filters['vegan'],
              subTitle: 'only include vegan meals.',
              onChange: (value) => controller.filters['vegan'] = value,
            ),
          ),
          Obx(
            () => SwitchKeyFilter(
              title: 'lactose-free',
              value: controller.filters['lactose'],
              subTitle: 'only include lactose free meals.',
              onChange: (value) => controller.filters['lactose'] = value,
            ),
          ),
        ],
      ),
    );
  }
}
