import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';
import 'package:getx_meal_app/models/meal.dart';
import 'meal_info_row.dart';

class MealItem extends StatelessWidget {
  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final int duration;
  final String imageUrl;
  final id;
  MealItem(
      {this.title,
      this.affordability,
      this.complexity,
      this.duration,
      this.imageUrl,
      this.id});

  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      default:
        return 'Unknown';
    }
  }

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricy';
        break;
      case Affordability.Luxurious:
        return 'Expensive';
        break;
      default:
        return 'Unkown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(
        Routes.MEAL_DETAIL,
        arguments: id,
      ).then((result) => print(result)),
      child: Card(
        margin: EdgeInsets.all(10.0),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  right: 8,
                  child: Container(
                    width: 330,
                    constraints: BoxConstraints(maxHeight: 70),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      '$title',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MealInfoRow(icon: Icons.schedule, info: duration.toString()),
                MealInfoRow(icon: Icons.work, info: complexityText),
                MealInfoRow(icon: Icons.attach_money, info: affordabilityText),
              ],
            )
          ],
        ),
      ),
    );
  }
}
