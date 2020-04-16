import 'package:flutter/material.dart';
import 'package:marketting/core/routes/route_names.dart';
import 'package:marketting/core/routes/router.dart';
import 'package:marketting/ui/screens/categoryRooms_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'marketting app',
      theme: ThemeData(fontFamily: 'Dana'),
      initialRoute: SplashRoute,
      onGenerateRoute: generateRoute,
    );
  }
}
