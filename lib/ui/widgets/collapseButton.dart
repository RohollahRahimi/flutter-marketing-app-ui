import 'package:flutter/material.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class CollapseButton extends StatefulWidget {
  List children;
  IconData icon;
  String title;
  String label;
  CollapseButton({this.children,this.icon,this.title,this.label});
  @override
  _CollapseButtonState createState() => _CollapseButtonState();
}

class _CollapseButtonState extends State<CollapseButton> {
  // double _animationHeight=230;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: ExpansionTile(title:  Row(
                      children: <Widget>[
                        Icon(
                          widget.icon,
                          color: Colors.black54,
                          size: 35,
                        ),
                        UIhelper.horizontalSpacesmall,
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),    
                      ],
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(right:45),
                      child: Text(widget.label),
                    ),
                    children:widget.children,
                    ),
                    
    );
  }
}