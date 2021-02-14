import 'package:get/get.dart';
import 'package:getx_meal_app/services/cash_service/favorite/favorite_meal.dart';
import 'package:hive/hive.dart';

class FavoriteMealService extends GetxService {
  static FavoriteMealService get to => Get.find();
  Box box;

  setToFavorites(FavoriteMeal meal) {
    box.put(meal.id, meal);
  }

  @override
  void onInit() async {
    super.onInit();
    box = await Hive.openBox<FavoriteMeal>('favoriteBox');
  }
}
