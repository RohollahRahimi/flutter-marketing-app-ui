import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/labels/label.dart';
import 'package:marketting/ui/screens/details&buy_screen.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class MostSellCard extends StatelessWidget {
  String title;
  String image;
  String score;
  String price;
  String price2;
  String discount;
  int id;
  Color color;
  String description;
  MostSellCard(
      {this.title,
      this.image,
      this.score,
      this.price,
      this.discount,
      this.price2,
      this.id,
    this.color,
    this.description,});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetailsRoute,arguments: {
          "productId": id,
          "color": color,
          "description": description,
          "productTitle": title,
          "productScore": score,
        });
      },
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(9),
            height: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-3, 5),
                      blurRadius: 10)
                ]),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 13),
                  width: 180,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIhelper.verdicalSpaceVsmall,
                    Text(title, style: Theme.of(context).textTheme.title),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.red,
                        ),
                        Text(score),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.black54,
                        ),
                        Text(
                          price,
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2),
                        ),
                        Text(
                          price2,
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.access_time,
                          color: Colors.black54,
                        ),
                        Text(
                          discount,
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Label()
        ],
      ),
    );
  }
}
