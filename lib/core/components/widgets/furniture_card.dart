import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../feature/furniture/model/furniture_model.dart';
import '../../../product/favorite_manager.dart';
import '../../extensions/context_extension.dart';
import '../../extensions/string_extension.dart';
import '../../lang/locale_keys.g.dart';

class FurnitureCard extends StatefulWidget {
  final Furniture furniture;

  const FurnitureCard({Key key, this.furniture}) : super(key: key);

  @override
  _FurnitureCardState createState() => _FurnitureCardState();
}

class _FurnitureCardState extends State<FurnitureCard> with AutomaticKeepAliveClientMixin {
  Furniture furniture;
  bool isFavorite = false;
  @override
  void initState() {
    furniture = widget.furniture;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageBox(context),
            _buildTitleWidget(context),
            _buildPriceWidget(context),
            _buildRateWidget(context),
            Center(
              child: _buildBuyButton(context),
            )
          ],
        ),
      ),
    );
  }

  Stack _buildImageBox(BuildContext context) {
    return Stack(
      children: [
        _buildImageContainer(context),
        _buildImageLikeButton(context),
      ],
    );
  }

  Container _buildImageContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: context.dynamicHeight(0.15),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(image: NetworkImage(furniture.url ?? ''), fit: BoxFit.cover),
      ),
    );
  }

  Positioned _buildImageLikeButton(BuildContext context) {
    Icon favorite = Icon(Icons.favorite_rounded, color: context.colorScheme.error);
    Icon notFavorite = Icon(Icons.favorite_border_outlined, color: context.colorScheme.onSecondary);
    return Positioned(
      right: 0,
      top: 0,
      child: CircleAvatar(
        backgroundColor: context.colorScheme.primary,
        child: IconButton(
            onPressed: changeFavoriteSituation, icon: isFavorite ? favorite : notFavorite),
      ),
    );
  }

  Text _buildTitleWidget(BuildContext context) =>
      Text(furniture.title ?? '', style: context.textTheme.headline5);

  Text _buildPriceWidget(BuildContext context) {
    return Text('\$ ${furniture.price ?? ''}',
        style: context.textTheme.headline6.copyWith(color: context.colorScheme.onSecondary));
  }

  Row _buildRateWidget(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: context.colorScheme.secondary),
        SizedBox(width: 8),
        Text((furniture.rate ?? '').toString(), style: context.textTheme.bodyText2),
      ],
    );
  }

  ElevatedButton _buildBuyButton(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(context.colorScheme.onPrimary),
          foregroundColor: MaterialStateProperty.all<Color>(context.colorScheme.primary),
        ),
        onPressed: () {},
        child: Text(LocaleKeys.button_text.locale(context)));
  }

  void changeFavoriteSituation() {
    if (isFavorite) {
      Provider.of<FavoriteManager>(context, listen: false).removeFurniture(furniture);
      //context.read()<FavoriteManager>().removeFurniture(furniture);
    } else {
      Provider.of<FavoriteManager>(context, listen: false).addFurnitue(furniture);
      //context.read()<FavoriteManager>().removeFurniture(furniture);
    }
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  bool get wantKeepAlive => true;
}
