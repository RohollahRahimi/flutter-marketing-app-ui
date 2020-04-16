import 'package:flutter/material.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class ProfileItemsCard extends StatelessWidget {
  IconData icon;
  String title;
  VoidCallback onTap;
  ProfileItemsCard({this.icon, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
        child: Container(
      margin: const EdgeInsets.all(10),
      height: 50,
      child: Row(
        children: <Widget>[
          Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                  color: Colors.grey[300], shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  icon,
                  size: 30,
                ),
              )),
          UIhelper.horizontalSpaceVsmall,
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ));
  }
}
