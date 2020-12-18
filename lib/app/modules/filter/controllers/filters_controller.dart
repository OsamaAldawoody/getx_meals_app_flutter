import 'package:get/get.dart';
import 'package:getx_meal_app/models/meal.dart';

class FiltersController extends GetxController {
  final filters = {
    'gluten-free': false,
    'vegetarian': false,
    'vegan': false,
    'lactose': false,
  }.obs;

  List<Meal> setFilters(List<Meal> list) {
    return list.where((meal) {
      if (filters['gluten-free'] && !meal.isGlutenFree) return false;
      if (filters['vegetarian'] && !meal.isVegetarian) return false;
      if (filters['vegan'] && !meal.isVegan) return false;
      if (filters['lactose'] && !meal.isLactoseFree) return false;
      return true;
    }).toList();
  }
}
