import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/category_screen_view.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/favourite_view.dart';

class TapsScreenController extends GetxController {
  RxString title = 'Categories'.obs;

  RxInt selectedPageIndex = 0.obs;

  void selectPage(int index) {
    selectedPageIndex.value = index;
    title.value = pages[selectedPageIndex.value]['title'];
  }

  List<Map<String, Object>> pages = [
    {
      'page': CategoryScreenView(),
      'title': 'Categories',
    },
    {
      'page': FavouriteView(),
      'title': 'Favorites',
    },
  ].obs;
}
