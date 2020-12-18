import 'package:get/get.dart';
import 'package:getx_meal_app/app/modules/filter/controllers/filters_controller.dart';

class FilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FiltersController>(() => FiltersController());
  }
}
