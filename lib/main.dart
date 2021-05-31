import 'package:flutter/material.dart';
import 'package:myfirst/pages/cart_page.dart';
import 'package:myfirst/pages/home_page.dart';
import 'package:myfirst/pages/login_page.dart';
import 'package:myfirst/utils/routes.dart';
import 'package:myfirst/widgets/themes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        darkTheme: MyTheme.darkTheme(context),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}
