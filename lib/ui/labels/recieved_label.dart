import 'package:flutter/material.dart';

class RecievedLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 90,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.red, 
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Center(
          child: Text('دریافت شده',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
