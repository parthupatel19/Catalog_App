import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_new/model/catlog_model.dart';
import 'package:project_new/widgets/drawer.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text('Catalog App')),
      ),
      body:(CatlogModel.items.isNotEmpty) ? ListView.builder(
        itemBuilder: (context, index) {
          return ProductWidget(
            item: CatlogModel.items[index],
          );
        },
        itemCount: CatlogModel.items.length,
      ): Center(child: CircularProgressIndicator(),),
      drawer: MyDrawer(),
    );
  }
}
