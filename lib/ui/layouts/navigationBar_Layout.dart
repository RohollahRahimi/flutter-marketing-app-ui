import 'package:flutter/material.dart';
import 'package:marketting/core/constants/lastRoute.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/shared/app_colors.dart';

class NavigationBarLayout extends StatefulWidget {
  final Widget child;
  final Widget appbar;
  NavigationBarLayout({this.child, this.appbar});
  @override
  _NavigationBarLayoutState createState() => _NavigationBarLayoutState();
}

class _NavigationBarLayoutState extends State<NavigationBarLayout> {
  int currentIndex =0;

  @override
  void initState() {
    switch (LastRoute.lastRoute) {
      case HomeRoute:
        currentIndex = 0;
        break;
      case SearchRoute:
        currentIndex = 1;
        break;
      case MyOrderRoute:
        currentIndex = 2;
        break;
      case FavoriteRoute:
        currentIndex = 3;
        break;
      case ProfileRoute:
        currentIndex = 4;
        break;
      default:
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: widget.appbar,
          body: widget.child,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                switch (index) {
                  case 0:
                    if (currentIndex != 0) {
                      Navigator.of(context).pushNamed(HomeRoute);
                    }
                    break;
                  case 1:
                    if (currentIndex != 1) {
                      Navigator.of(context).pushNamed(SearchRoute);
                    }
                    break;
                  case 2:
                    if (currentIndex != 2) {
                      Navigator.of(context).pushNamed(MyOrderRoute);
                    }
                    break;
                  case 3:
                    if (currentIndex != 3) {
                      Navigator.of(context).pushNamed(FavoriteRoute);
                    }
                    break;
                  case 4:
                    if (currentIndex != 4) {
                      Navigator.of(context).pushNamed(ProfileRoute);
                    }
                    break;
                  default:
                }
              },
              
              items: [
                bottomItems(Icons.home, 'خانه', isActive: currentIndex == 0),
                bottomItems(Icons.search, 'جستجو', isActive: currentIndex == 1),
                bottomItems(Icons.shopping_cart, 'سبد خرید',
                    isActive: currentIndex == 2),
                bottomItems(Icons.favorite, 'علاقه مندی ها',
                    isActive: currentIndex == 3),
                bottomItems(Icons.person, 'پروفایل',
                    isActive: currentIndex == 4),
              ]),
        
        ),);
  }

  BottomNavigationBarItem bottomItems(IconData icon, String title,
      {bool isActive = false}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: isActive ? activeColor : primaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(color: isActive ? activeColor : primaryColor),
      ),
    );
  }
}
