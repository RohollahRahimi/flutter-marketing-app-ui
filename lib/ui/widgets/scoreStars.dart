import 'package:flutter/material.dart';

class ScoreStars extends StatelessWidget {
  String score;
  ScoreStars({this.score=''});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Icon(Icons.star,color: Colors.grey[400],),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Icon(Icons.star,color: Colors.red,),
          Text(score)
        ],
      ),
    );
  }
}