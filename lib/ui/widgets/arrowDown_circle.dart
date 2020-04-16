import 'package:flutter/material.dart';

class ArrowDownCircle extends StatelessWidget {
  VoidCallback onTap;
  ArrowDownCircle({this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
      width: 57,
      height: 57,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red
      ),
      child: Icon(Icons.arrow_downward,color: Colors.white,),
    ),
    );
  }
}