import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/screens/categoryRooms_screen.dart';

class GridViewCard extends StatelessWidget {
  final Color color;
  final int id;
  final String title;
  final String image;
  GridViewCard({
    this.color,
    this.title,
    this.image,
    this.id,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(CategoryRoomsRoute,arguments:{
            "categoryId": id,
              "title": title,
          });
        },
        child: Stack(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  )),
            ),
            Container(
              padding: const EdgeInsets.only(right: 10),
              width: 200,
              height: 200,
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color.withOpacity(0.4),
              ),
            )
          ],
        ));
  }
}
