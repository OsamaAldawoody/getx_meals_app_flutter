import 'package:flutter/material.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/category_screen_view.dart';
import 'package:getx_meal_app/app/modules/meals_taps_screen/views/favourite_view.dart';

import 'package:getx_meal_app/shared/app_text.dart';

class TabsView extends StatefulWidget {
  @override
  _TabsViewState createState() => _TabsViewState();
}

class _TabsViewState extends State<TabsView> {
  final List<Tab> taps = [
    Tab(
      icon: Icon(Icons.category),
      text: 'categories',
    ),
    Tab(
      icon: Icon(Icons.star),
      text: 'favourite',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    String title = 'Categories';
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: AppText(
            title,
            color: Colors.white,
          ),
          bottom: TabBar(
            tabs: taps,
            onTap: (i) {
              setState(() {
                title = taps[i].text;
                print(title);
              });
            },
          ),
        ),
        body: TabBarView(
          children: [CategoryScreenView(), FavouriteView()],
        ),
      ),
    );
  }
}
