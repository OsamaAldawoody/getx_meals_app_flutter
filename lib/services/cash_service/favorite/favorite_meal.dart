import 'package:getx_meal_app/services/cash_service/cacheManagement/caache_constants.dart';
import 'package:hive/hive.dart';
part 'favorite_meal.g.dart';

@HiveType(typeId: favoriteMealId)
class FavoriteMeal extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  List<String> categories;
  String title;
  @HiveField(2)
  String imageUrl;
  @HiveField(3)
  List<String> ingredients;
  @HiveField(4)
  List<String> steps;
  @HiveField(5)
  int duration;
  @HiveField(6)
  bool isGlutenFree;
  @HiveField(7)
  bool isLactoseFree;
  @HiveField(8)
  bool isVegan;
  @HiveField(9)
  bool isVegetarian;
}
