import 'package:flutter/material.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationBarLayout(
      appbar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              })),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    UIhelper.verdicalSpacesmall,
                 Row(children: <Widget>[
                      Text(
              '  جستجو',
              style: Theme.of(context).textTheme.headline,
            ),
            Spacer(),
            Container(
              margin: const EdgeInsets.all(10),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300]
              ),
              child: IconButton(
                icon:Icon(Icons.tune),
                onPressed: (){},
                ),
            )
                 ],),
            UIhelper.verdicalSpacesmall,
           Container(
             height: 55,
             margin: const EdgeInsets.all(10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               color: Colors.grey[350],
             ),
             child:  TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                hintText: 'جستجو',
                suffixIcon: IconButton(icon: Icon(Icons.search), 
                onPressed: (){}),
              ),
            ),
           ),
                  ],
                ),
              ),
    );
  }
}