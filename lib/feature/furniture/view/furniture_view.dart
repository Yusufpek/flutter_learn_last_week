import 'package:flutter/material.dart';

import '../../../core/components/lists/categories_list.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(ImageConstants.instance.profileImgUrl)),
              title: Column(children: [
                Text(LocaleKeys.welcome.locale(context)),
                Text(LocaleKeys.username.locale(context)),
              ]),
            ),
            Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Expanded(child: TextField()),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.settings),
                    ),
                  ],
                )),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, i) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              child: Text(categories[i].locale(context)),
                            ),
                          );
                        })),
                Expanded(
                    flex: 4,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 0.8),
                      itemCount: _viewModel.furnitureList.length,
                      itemBuilder: (context, i) => Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(_viewModel.furnitureList[i].url)),
                                  ),
                                ),
                              ],
                            ),
                            Text(_viewModel.furnitureList[i].title),
                            Text('\$ ${_viewModel.furnitureList[i].price}'),
                            Row(
                              children: [
                                Icon(Icons.star, color: context.colorScheme.secondary),
                                Text(_viewModel.furnitureList[i].rate.toString()),
                              ],
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(LocaleKeys.button_text.locale(context)))
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
