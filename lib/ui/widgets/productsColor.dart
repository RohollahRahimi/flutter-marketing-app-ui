import 'package:flutter/material.dart';

class ProductsColor extends StatelessWidget {
  Color color;
  ProductsColor({this.color});
  List colors = [
    Colors.lightGreen,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.blueGrey
  ];

  @override
  Widget build(BuildContext context) {

    List colorsWidget = colors.map((colorItem) {
      return ColorCircle(
        color: colorItem,
        isActive: colorItem == color,
      );
    }).toList();

    return Container(
        height: 40,
        child: Row(
          children: colorsWidget,
        ));
  }
}

class ColorCircle extends StatelessWidget {
  final color;
  final bool isActive;

  ColorCircle({this.color, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              width: 2, color: isActive ? color : Colors.transparent)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
