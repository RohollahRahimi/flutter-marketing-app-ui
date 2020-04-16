import 'package:flutter/material.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/ui/cards/bestSeller_card.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';
import 'package:marketting/ui/widgets/categoryRoom_circles.dart';

class CategoryRooms extends StatelessWidget {

final int categoryId;
  final String title;
  CategoryRooms({this.categoryId, this.title});

  @override
  Widget build(BuildContext context) {
    List relatedCategory = allCategoryData
        .where((cat) => cat["parent_id"] == categoryId)
        .toList();

    List categoryCirclesList = relatedCategory.map((circles) {
      return CategoryRoomCircles(
        image: circles["image"],
        title: circles["title"],
      );
    }).toList();

    Map category = allCategoryData.firstWhere(
      (cat) => cat["id"] == categoryId,
      );

    List categoryProducts = category["products"];

    List<Widget> relatedProducts = categoryProducts.map((bestSeller) {
      return BestSellerCard(
        image: bestSeller["image"],
        title: bestSeller["title"],
        score: bestSeller["score"],
        price: bestSeller["price"],
        id: bestSeller["id"],
        color: bestSeller["color"],
        description: bestSeller["description"],
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
              title,
              style: Theme.of(context).textTheme.headline,
            ),
            Container(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryCirclesList.length,
                  itemBuilder: (_, int index) {
                    return categoryCirclesList[index];
                  }),
            ),
            Container(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.65,
                padding: const EdgeInsets.all(10),
                children: relatedProducts,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
