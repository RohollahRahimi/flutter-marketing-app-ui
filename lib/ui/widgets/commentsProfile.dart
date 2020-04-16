import 'package:flutter/material.dart';
import 'package:marketting/ui/shared/ui_helper.dart';
import 'package:marketting/ui/widgets/scoreStars.dart';

class CommentsProfile extends StatelessWidget {
  String image;
  String userName;
  String score;
  String date;
  String comment;
  CommentsProfile({this.image,this.userName,this.score,this.date,this.comment});
  @override
  Widget build(BuildContext context) {
    return  Column(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              height: 40,
              width: 40,
              child:ClipOval(
              child: Image.asset(image,fit: BoxFit.cover,),
            ), 
            ),
            Column(children: <Widget>[
              Text(userName),
              Row(children: <Widget>[
                ScoreStars(),
                Text(score,style: TextStyle(color: Colors.black54),),
              ],)
            ],),
            Spacer(),
            Text(date,style: TextStyle(color: Colors.black54),),
          ],),
          Text(comment),
          UIhelper.verdicalSpacesmall
        ],
    );
  }
}