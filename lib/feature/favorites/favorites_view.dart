import 'package:flutter/material.dart';
import 'package:flutter_learn_last_week/core/lang/locale_keys.g.dart';
import 'package:provider/provider.dart';

import '../../core/components/widgets/furniture_card.dart';
import '../../core/extensions/string_extension.dart';
import '../../product/favorite_manager.dart';

class FavoritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.appBar_favorite.locale(context)),
      ),
      body: context.watch<FavoriteManager>().favoriteFurnitures.isEmpty
          ? Center(child: Text('Basket is empty'))
          : _buildListView(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: context.watch<FavoriteManager>().favoriteFurnitures.length,
      itemBuilder: (context, index) {
        return FurnitureCard(furniture: context.watch<FavoriteManager>().favoriteFurnitures[index]);
      },
    );
  }
}
