import 'package:flutter/material.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/ui/cards/ordered_card.dart';
import 'package:marketting/ui/labels/coming_soon_label.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List favoriteList = allProductsListData.sublist(4, 7).map((faiv) {
      return OrderedCard(
        image: faiv["image"],
        price: faiv["price"],
        color: faiv["color"],
        title: faiv["title"],
        id: faiv["id"],
        description: faiv["description"],
        score: faiv["score"],   
      );
    }).toList();

    return NavigationBarLayout(
      appbar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              })),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            UIhelper.verdicalSpacesmall,
            Text(
              '  لیست علاقه مندی ها',
              style: Theme.of(context).textTheme.headline,
            ),
            UIhelper.verdicalSpacesmall,
            Container(
              height: 500,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) {
                  return favoriteList[index];
                },
                itemCount: favoriteList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
