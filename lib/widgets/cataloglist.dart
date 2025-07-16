import 'package:flutter/cupertino.dart';
import 'package:project_new/model/catlog_model.dart';
import 'package:project_new/widgets/catalogitem.dart';

class Cataloglist extends StatelessWidget {
  const Cataloglist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatlogModel.items.length,
      itemBuilder: (context, index) {

        final catlog = CatlogModel.items[index];

        return Catalogitem(catalog: catlog);
      },
    );
  }
}
