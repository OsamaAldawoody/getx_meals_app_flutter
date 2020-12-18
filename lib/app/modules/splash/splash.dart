import 'package:bdaya_custom_splash/bdaya_custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_meal_app/app/data/dummy_data.dart';
import 'package:getx_meal_app/app/routes/app_pages.dart';
import 'package:getx_meal_app/services/cash_service/favorite/favorite_meal.dart';
import 'package:getx_meal_app/shared/app_text.dart';
import 'package:getx_meal_app/utilities/screen_utilities.dart';
import 'package:hive/hive.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: Size(750, 1334), allowFontScaling: true);
    return BdayaCustomSplash(
      shimmerBuilder: (child) {
        print('shimmer');
        return Shimmer.fromColors(
          child: child,
          baseColor: ScreenUtilities.primaryColor,
          highlightColor: ScreenUtilities.appGrey,
        );
      },
      onNavigateTo: (result) => Get.offNamed(result),
      logoBuilder: () => Center(
        child: AppText(
          'Meal App',
          color: ScreenUtilities.primaryColor,
          fontSize: 82.sp,
        ),
      ),
      initFunction: () async {
        Hive.registerAdapter<FavoriteMeal>(FavoriteMealAdapter());
        await Future.delayed(Duration(seconds: 1));
        return Routes.ROOT_HOME;
      },
      backgroundBuilder: (Widget child) => child,
    );
  }
}
