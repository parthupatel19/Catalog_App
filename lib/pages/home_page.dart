import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_new/model/catlog_model.dart';
import 'package:project_new/utils/my_routes.dart';
import 'package:project_new/widgets/cataloglist.dart';
import 'package:project_new/widgets/drawer.dart';
import 'package:project_new/widgets/header.dart';
import 'package:project_new/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/items_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var catlogJson = await rootBundle.loadString("assets/files/products.json");
    var decodeData = jsonDecode(catlogJson);
    var productsData = decodeData["products"];

    CatlogModel.items = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {

    });
  }


  @override
  Widget build(BuildContext context) {

    // final dummyList = List.generate(20, (index) => CatlogModel.items[0]);

    return Scaffold(
        backgroundColor: context.cardColor,
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, MyRoutes.cartRoute);
            },
          backgroundColor: context.cardColor,
          child: Icon(
              Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatlogModel.items != null && CatlogModel.items.isNotEmpty)
                Cataloglist().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      )
    );
  }
}
