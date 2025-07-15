import 'package:flutter/material.dart';

import '../model/catlog_model.dart';

class ProductWidget extends StatelessWidget {

  final Item item;

  const ProductWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){

        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}"),
      ),
    );
  }
}
