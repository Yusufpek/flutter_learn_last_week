import 'package:flutter/material.dart';

import '../furniture/view/furniture_view.dart';
import '../settings/settings_view.dart';
import 'tab_model.dart';

class AppBottomTabbar extends StatelessWidget {
  final List<TabModel> tabs = [
    TabModel(icon: Icons.home, child: FurnitureView()),
    TabModel(
      icon: Icons.shopping_basket,
      child: Scaffold(body: Text('basket page')),
    ),
    TabModel(icon: Icons.favorite, child: FurnitureView()),
    TabModel(icon: Icons.person, child: SettingsView()),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(child: buildTabBar(context)),
        body: buildTabBarView(),
      ),
    );
  }

  TabBar buildTabBar(c) {
    return TabBar(
        tabs: List.generate(
      tabs.length,
      (index) => Tab(icon: Icon(tabs[index].icon)),
    ));
  }

  TabBarView buildTabBarView() => TabBarView(children: tabs.map((e) => e.child).toList());
}
