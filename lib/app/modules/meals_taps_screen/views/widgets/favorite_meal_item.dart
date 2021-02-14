import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';

class FavoriteMealItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String id;
  FavoriteMealItem({this.imageUrl, this.title, this.id});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.MEAL_DETAIL, arguments: id);
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 7,
                spreadRadius: 4,
                offset: Offset(0, 4),
                color: Colors.grey.withOpacity(0.5),
              )
            ]),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.fill,
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
      ),
    );
  }
}
