import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/models/meal.dart';

class CategoryMealsScreenController extends GetxController {
  Map<String, dynamic> args = <String, dynamic>{};

  final filteredMelas = List<Meal>().obs;

  @override
  void onInit() {
    super.onInit();

    args = Get.arguments as Map<String, dynamic>;

    filteredMelas.assignAll(DataService.to.filteredMeals
        .where((meal) => meal.categories.contains(args['id']))
        .toList()
        .obs);
  }
}
