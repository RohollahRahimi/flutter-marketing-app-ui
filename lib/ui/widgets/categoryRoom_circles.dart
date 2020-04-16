import 'package:flutter/material.dart';

class CategoryRoomCircles extends StatelessWidget {
  String image;
    String title;
    CategoryRoomCircles({this.image,this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(8),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: ClipOval(
            child: Image.asset(image,fit: BoxFit.cover,),
          ),
        ),
        Text(title),
      ],
    );
  }
}