import 'package:flutter/material.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/ui/cards/ordered_card.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';
import 'package:marketting/ui/widgets/redIconButton.dart';

class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List orderedlist = allProductsListData.sublist(2,5).map((tra) {
      return OrderedCard(
        image: tra["image"],
        price: tra["price"],
        color: tra["color"],
        title: tra["title"],
        id: tra["id"],
        description: tra["description"],
        score: tra["score"],   
      );
    }).toList();
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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      UIhelper.verdicalSpacesmall,
                    Text(
              '  سبد خرید',
              style: Theme.of(context).textTheme.headline,
            ),
            UIhelper.verdicalSpacesmall,
            Container(
              height: 510,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_, int index) {
                  return orderedlist[index];
                },
                itemCount: orderedlist.length,
              ), 
            ),
            Row(children: <Widget>[
              Text('  قیمت محصول',style: TextStyle(fontSize: 16,height: 2.5,color: Colors.black54),),
              Spacer(),
              Text('450ت '),
            ],),
            Row(children: <Widget>[
              Text('  هزینه ارسال',style: TextStyle(fontSize: 16,height: 2.5,color: Colors.black54),),
              Spacer(),
              Text('0ت '),
            ],),
            Row(children: <Widget>[
              Text('  جمع کل',style: TextStyle(fontSize: 16,height: 2.5,color: Colors.black54),),
              Spacer(),
              Text('450ت ',style: TextStyle(color: Colors.red),),
            ],),
            UIhelper.verdicalSpaceMedium,
            RedIconButton(title: 'پرداخت',
            onTap: (){},)
    ],
  ),
),
    );
  }
}