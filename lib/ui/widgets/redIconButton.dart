import 'package:flutter/material.dart';

class RedIconButton extends StatelessWidget {
  String title;
  VoidCallback onTap;
  RedIconButton({this.title,this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child:Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),),
                ),
                onTap:onTap
                );
  }
}