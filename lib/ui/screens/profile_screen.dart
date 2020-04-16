import 'package:flutter/material.dart';
import 'package:marketting/ui/cards/profile_items_card.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/screens/transport_screen.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class ProfileScreen extends StatelessWidget {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    UIhelper.verdicalSpacesmall,
                    Text('  حساب من',style: Theme.of(context).textTheme.headline,),
                    ProfileItemsCard(icon: Icons.person,title: 'پروفایل',),
                    ProfileItemsCard(icon: Icons.location_on,title: 'آدرس',),
                    ProfileItemsCard(icon: Icons.credit_card,title: 'حساب وکارت',),
                    ProfileItemsCard(icon: Icons.today,title: 'سابقه',),
                    ProfileItemsCard(icon: Icons.local_shipping,title: 'جزئیات حمل و نقل',
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return TransportScreen();
                      }));
                    },),
                    ProfileItemsCard(icon: Icons.settings,title: 'تنظیمات',),
                    ProfileItemsCard(icon: Icons.exit_to_app,title: 'خروج',),
                  ],
                ),
              ),
    );
  }
}