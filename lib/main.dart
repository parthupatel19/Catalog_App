import 'package:flutter/material.dart';
import 'package:project_new/pages/home_page.dart';
import 'package:project_new/pages/login_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        // '/' : (context) => HomePage(),
        '/' : (context) => LoginPage(),
        '/home' : (context) => HomePage(),
        '/login' : (context) => LoginPage(),
      },
    );
  }
}
