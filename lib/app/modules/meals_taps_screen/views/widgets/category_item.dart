import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';

class CategoryItem extends StatelessWidget {
  final id;
  final title;
  final Color color;
  CategoryItem({this.title, this.color, this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.CATEGORY_MEALS_SCREEN,
          arguments: {'id': id, 'title': title, 'color': color}),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(6),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [color.withOpacity(.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: color,
        ),
      ),
    );
  }
}
