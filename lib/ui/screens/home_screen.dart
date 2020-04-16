import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/cards/bestSeller_card.dart';
import 'package:marketting/ui/cards/gridview_card.dart';
import 'package:marketting/ui/cards/mostSell_card.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/screens/details&buy_screen.dart';
import 'package:marketting/ui/shared/ui_helper.dart';

class HomeScreen extends StatefulWidget {
  //  int swpId;
   String swpImage;
   String swpTitle;
   String swpScore;
   Color swpColor;
   String swpDescription;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int swpId;
  @override
  Widget build(BuildContext context) {

    List swiperImagesList = allProductsListData.map((item) => item).toList();
    swiperImagesList.shuffle();
    List swiperItems = swiperImagesList.take(6).map((pro){
      return GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
            return ProductDetails(
              productId:pro["id"] ,
              color: pro["color"],
              description: pro["description"],
              productScore: pro["score"],
              productTitle: pro["title"],
            );
          }));
        },
        child:Image.asset(pro["image"],fit: BoxFit.cover,)
      );
    }).toList();

    List homeCategoryList = allCategoryData.take(6).map((parts) {
      return GridViewCard(
        color: parts["color"],
        image: parts["image"],
        title: parts["title"],
        id: parts["id"],
      );
    }).toList();

    List mostSellList = allProductsListData.take(2).map((furniture) {
      return MostSellCard(
        image: furniture["image"],
        title: furniture["title"],
        score: furniture["score"],
        price: furniture["price"],
        price2: furniture["price2"],
        discount: furniture["discount"],
        id: furniture["id"],
        color: furniture["color"],
        description: furniture["description"],
      );
    }).toList();

    List bestSellerList = allProductsListData.sublist(2, 6).map((bestSeller) {
      return BestSellerCard(
        image: bestSeller["image"],
        title: bestSeller["title"],
        score: bestSeller["score"],
        price: bestSeller["price"],
        id: bestSeller["id"],
        color: bestSeller["color"],
        description: bestSeller["description"],
      );
    }).toList();

    return NavigationBarLayout(
        child: SingleChildScrollView(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        UIhelper.verdicalSpacesmall,
        Container(
          height: 250,
          child: Swiper(
            autoplay: true,
            itemBuilder: (_,int index){
              return swiperItems[index];
            },
            itemCount: swiperItems.length,
            pagination: SwiperPagination(),
          ),
        ),
        UIhelper.verdicalSpacesmall,
        Text(
          'محصولات',
          style: Theme.of(context).textTheme.title,
        ),
        Container(
          height: 300,
          child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              padding: const EdgeInsets.all(10),
              children: homeCategoryList),
        ),
        Row(
          children: <Widget>[
            Text(
              'پرفروش ترین',
              style: Theme.of(context).textTheme.title,
            ),
            Spacer(),
            FlatButton(
                onPressed: null,
                child: Text(
                  'بیشتر',
                  style: TextStyle(color: Colors.red, fontSize: 17),
                ))
          ],
        ),
        Container(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: mostSellList.length,
              itemBuilder: (_, int index) {
                return mostSellList[index];
              }),
        ),
        UIhelper.verdicalSpacesmall,
        Text(
          'فروشنده برتر',
          style: Theme.of(context).textTheme.title,
        ),
        Container(
          child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.65,
              padding: const EdgeInsets.all(10),
              children: bestSellerList),
        ),
      ],
    )));
  }
}
