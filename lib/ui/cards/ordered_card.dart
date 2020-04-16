import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/labels/coming_soon_label.dart';
import 'package:marketting/ui/labels/recieved_label.dart';
import 'package:marketting/ui/screens/details&buy_screen.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class OrderedCard extends StatelessWidget {
  String title;
  var label;
  int id;
  String image;
  String price;
  Color color;
  String score;
  String description;
  OrderedCard({
    this.title,
    this.image,
    this.price,
    this.label,
    this.id,
    this.color,
    this.score,
    this.description,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetailsRoute, arguments: {
          "productId": id,
          "color": color,
          "description": description,
          "productTitle": title,
          "productScore": score,
        });
      },
      child: Stack(
        alignment: Alignment.topLeft,
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
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIhelper.verdicalSpaceVsmall,
                    Text(title, style: Theme.of(context).textTheme.title),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.monetization_on,
                          color: Colors.black54,
                        ),
                        Text(
                          price,
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.color_lens,
                          color: Colors.black54,
                        ),
                        Text(
                          'رنگ',
                          style: TextStyle(color: Colors.black45),
                        ),
                        UIhelper.horizontalSpaceVsmall,
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: color, shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          label ?? Container(),
        ],
      ),
    );
  }
}
