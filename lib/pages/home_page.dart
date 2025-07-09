import 'package:flutter/material.dart';
import 'package:project_new/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text('Catalog App')),
      ),
      body: Center(
        child: Text('Lets Go'),
      ),
      drawer: MyDrawer(),
    );
  }
}
