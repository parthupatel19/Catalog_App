import 'package:flutter/material.dart';
import 'package:project_new/pages/cart_page.dart';
import 'package:project_new/pages/home_page.dart';
import 'package:project_new/pages/login_page.dart';
import 'package:project_new/utils/my_routes.dart';
import 'package:project_new/widgets/themes.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        // '/' : (context) => HomePage(),
        '/' : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.cartRoute : (context) => CartPage(),
      },
    );
  }
}
