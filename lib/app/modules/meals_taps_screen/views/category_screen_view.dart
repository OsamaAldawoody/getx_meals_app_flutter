import 'package:flutter/material.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/widgets/category_item.dart';

class CategoryScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map(
            (categoryData) => CategoryItem(
              id: categoryData.id,
              color: categoryData.color,
              title: categoryData.title,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
    );
  }
}
