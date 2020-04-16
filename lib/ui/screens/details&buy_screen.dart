import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:marketting/core/data/data.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/layouts/navigationBar_Layout.dart';
import 'package:marketting/ui/shared/ui_helper.dart';
import 'package:marketting/ui/widgets/collapseButton.dart';
import 'package:marketting/ui/widgets/commentsProfile.dart';
import 'package:marketting/ui/widgets/productsColor.dart';
import 'package:marketting/ui/widgets/redIconButton.dart';
import 'package:marketting/ui/widgets/scoreStars.dart';

class ProductDetails extends StatefulWidget {
  final int productId;
  final String productTitle;
  final String productScore;
  final Color color;
  final String description;

  ProductDetails({
    this.productId,
    this.productTitle,
    this.productScore,
    this.color,
    this.description,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentindex;
  final _controller = ScrollController();
  double _width = 100;
  List<int> numbers = [
    1,
    2,
    3,
    4,
    5,
  ];
  int selectedNumber;

  _animateToIndex(i) => _controller.animateTo(_width * i,
      duration: Duration(seconds: 2), curve: Curves.fastOutSlowIn);
  @override
  void initState() {
    currentindex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Map swiperid =
        allProductsListData.firstWhere((pro) => pro["id"] == widget.productId);
    List swiperList = swiperid["gallary"];
    List<Widget> swiperItems = swiperList.map((image) {
      return Image.asset(
        image,
        fit: BoxFit.cover,
      );
    }).toList();

    List productFeatures = swiperid["features"];
    List productFeatureItem = productFeatures.map((feature) {
      return Row(
        children: <Widget>[
          Text(
            feature["name"],
            style: TextStyle(fontWeight: FontWeight.bold, height: 2.2),
          ),
          Spacer(),
          Text(
            feature["value"],
            style: TextStyle(
              color: Colors.black54,
            ),
          )
        ],
      );
    }).toList();

    List productComments = swiperid["comments"];
    List<Widget> commentsList = productComments.map((com) {
      return Container(
        child: CommentsProfile(
          userName: com["user"]["userName"],
          image: com["user"]["userImage"],
          comment: com["comment"],
          score: com["user"]['userScore'],
          date: com["date"],
        ),
      );
    }).toList();
    commentsList.add(Container(
      child: FlatButton(
          onPressed: () {},
          child: Row(
            children: <Widget>[
              Text('مشاهده همه 543 نظرات'),
              Spacer(),
              Icon(Icons.keyboard_arrow_left)
            ],
          )),
    ));

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
            Container(
              height: 250,
              child: Swiper.children(
                autoplay: true,
                children: swiperItems,
                onIndexChanged: (int index) {
                  setState(() {
                    currentindex = index;
                    _animateToIndex(index);
                  });
                },
                pagination: SwiperPagination(),
              ),
            ),
            Container(
              height: 110,
              child: ListView.builder(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                itemCount: swiperItems.length,
                itemBuilder: (_, int index) {
                  return Center(
                    child: Container(
                      height: index == currentindex ? 140 : 110,
                      width: index == currentindex ? 140 : 110,
                      child: swiperItems[index],
                    ),
                  );
                },
              ),
            ),
            UIhelper.verdicalSpaceMedium,
            Text(
              widget.productTitle,
              style: Theme.of(context).textTheme.title,
            ),
            ScoreStars(
              score: widget.productScore,
            ),
            UIhelper.verdicalSpaceVsmall,
            ProductsColor(
              color: widget.color,
            ),
            UIhelper.verdicalSpacesmall,
            Text(widget.description),
            UIhelper.verdicalSpaceMedium,
            CollapseButton(
              children: productFeatureItem,
              icon: Icons.info,
              title: 'مشخصات کالا',
              label: 'مواد/ابعاد/رنگ',
            ),
            UIhelper.verdicalSpaceVsmall,
            CollapseButton(
              children: commentsList,
              icon: Icons.star,
              title: 'نظرات مشتری',
              label: 'بررسی 532',
            ),
            RedIconButton(
              title: 'افزودن به سبد خرید',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: Container(
                            height: 380,
                            child: AlertDialog(
                              title: Text(
                                'تعداد',
                                textAlign: TextAlign.center,
                              ),
                              content: Container(
                                width: double.maxFinite,
                                child: Swiper(
                                  onIndexChanged: (indx) {
                                    setState(() {
                                      selectedNumber = numbers[indx];
                                    });
                                  },
                                  viewportFraction: 0.43,
                                  itemCount: numbers.length,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (_, int index) {
                                    return Center(
                                      child: Text(numbers[index].toString(),
                                      style:TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),),
                                    );
                                  },
                                ),
                              ),
                              actions: [
                                Container(
                                  width: double.maxFinite,
                                  child: RedIconButton(
                                    title: 'افزودن به سبد خرید',
                                    onTap: () {
                                      print('====$selectedNumber');
                                      Navigator.of(context).pushReplacementNamed(MyOrderRoute);
                                    },
                                  ),
                                )
                              ],
                            )),
                      );
                    });
              },
            ),
          ],
        ),
      ),
    );
  }
}
