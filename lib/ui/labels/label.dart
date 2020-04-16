import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(9),
      width: 35,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue, 
          borderRadius: BorderRadius.circular(3)),
      child: Center(
        child: Center(
          child: Text('50%',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
