import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketting/core/constants/lastRoute.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/ui/screens/categoryRooms_screen.dart';
import 'package:marketting/ui/screens/details&buy_screen.dart';
import 'package:marketting/ui/screens/favorites_screen.dart';
import 'package:marketting/ui/screens/home_screen.dart';
import 'package:marketting/ui/screens/myOrder_screen.dart';
import 'package:marketting/ui/screens/profile_screen.dart';
import 'package:marketting/ui/screens/search_screen.dart';
import 'package:marketting/ui/screens/splash_screen.dart';
import 'package:marketting/ui/screens/transport_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Map<String , dynamic> params = settings.arguments;
   switch (settings.name) {
    case SplashRoute:
      return _pageRoute(SplashScreen(), settings);
      break;
    case HomeRoute:
      return _pageRoute(HomeScreen(), settings);
      break;
    case SearchRoute:
      return _pageRoute(SearchScreen(), settings);
      break;
    case FavoriteRoute:
      return _pageRoute(FavoriteScreen(), settings);
      break;
    case ProfileRoute:
      return _pageRoute(ProfileScreen(), settings);
      break;
    case MyOrderRoute:
      return _pageRoute(MyOrderScreen(), settings);
      break;
    case CategoryRoomsRoute:
      return _pageRoute(CategoryRooms(
        categoryId: params["categoryId"],
        title: params["title"],
      ), settings);
      break;
    case ProductDetailsRoute:
      return _pageRoute(ProductDetails(
         productId:params["productId"],
            color: params["color"],
            description: params["description"],
            productTitle: params["productTitle"],
            productScore:params["productScore"] ,
      ), settings);
      break;
    case TransportRoute:
      return _pageRoute(TransportScreen(), settings);
      break;
    default:
      return _pageRoute(SplashScreen(), settings);
      break;
  }
}

PageRoute _pageRoute(Widget child, RouteSettings sett) {
  LastRoute.lastRoute = sett.name;
  return FadeRoute(child: child, routeName: sett.name);
}

class FadeRoute extends PageRouteBuilder {
  Widget child;
  String routeName;
  FadeRoute({this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
