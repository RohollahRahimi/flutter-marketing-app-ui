import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/screens/details&buy_screen.dart';

class BestSellerCard extends StatelessWidget {
  String image;
  String title;
  String score;
  String price;
  int id;
  Color color;
  String description;
  BestSellerCard({
    this.image,
    this.title,
    this.score,
    this.price,
    this.id,
    this.color,
    this.description,
  });
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
            padding: const EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-3, 5),
                      blurRadius: 10)
                ]),
            child: Column(
              children: <Widget>[
                Expanded(child: Container(
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),),
                Text(
                  title,
                  style: Theme.of(context).textTheme.title,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.red,
                    ),
                    Text(score),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.monetization_on,
                      color: Colors.black54,
                    ),
                    Text(price)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
