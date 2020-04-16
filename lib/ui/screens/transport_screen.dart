import 'package:flutter/material.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/ui/cards/ordered_card.dart';
import 'package:marketting/ui/labels/coming_soon_label.dart';
import 'package:marketting/ui/labels/recieved_label.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class TransportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List transportList = allProductsListData.sublist(2, 7).map((tra) {
      return OrderedCard(
        image: tra["image"],
        price: tra["price"],
        color: tra["color"],
        title: tra["title"],
        id: tra["id"],
        description: tra["description"],
        score: tra["score"],   
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
              'جزئیات حمل و نقل',
              style: Theme.of(context).textTheme.headline,
            ),
            UIhelper.verdicalSpacesmall,
            Container(
              height: 840,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) {
                  return transportList[index];
                },
                itemCount: transportList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
