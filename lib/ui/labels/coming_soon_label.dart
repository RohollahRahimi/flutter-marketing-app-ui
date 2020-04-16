import 'package:flutter/material.dart';

class ComingSoonLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 80,
      height: 30,
      decoration: BoxDecoration(
          color: Colors.blue, 
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Center(
          child: Text('به زودی',style: TextStyle(color: Colors.white),)),
      ),
    );
  }
}
