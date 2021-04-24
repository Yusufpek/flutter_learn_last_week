import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/components/lists/categories_list.dart';
import '../../../core/components/widgets/furniture_card.dart';
import '../../../core/constants/image_url_constants.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/string_extension.dart';
import '../../../core/lang/locale_keys.g.dart';
import '../model_view/furniture_view_model.dart';

class FurnitureView extends StatelessWidget {
  final _viewModel = FurnitureViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Expanded(flex: 2, child: _buildSearchBar(context)),
            Expanded(child: _buildCategoryListView(context)),
            Expanded(
              flex: 5,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.7),
                  itemCount: _viewModel.furnitureList.length,
                  itemBuilder: (context, i) =>
                      FurnitureCard(furniture: _viewModel.furnitureList[i])),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appbar(context) => AppBar(
        leading: CircleAvatar(backgroundImage: NetworkImage(ImageConstants.instance.profileImgUrl)),
        title: Column(children: [
          Text(LocaleKeys.welcome.locale(context)),
          Text(LocaleKeys.username.locale(context)),
        ]),
        actions: [Icon(Icons.notifications_none_outlined)],
      );

  Widget _buildSearchBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: TextField(
          decoration:
              InputDecoration(prefixIcon: Icon(Icons.search), prefixText: LocaleKeys.search_bar),
        )),
        IconButton(icon: Icon(Icons.settings), onPressed: () {}),
      ],
    );
  }

  Widget _buildCategoryListView(BuildContext context) {
    return Observer(
      builder: (context) => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (c, i) => _buildCategoryCard(categories[i], c),
      ),
    );
  }

  Widget _buildCategoryCard(String category, BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.all(8),
        width: context.dynamicWidth(0.15),
        decoration: BoxDecoration(
          color: context.colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(child: Text(category)),
      ),
    );
  }
}
