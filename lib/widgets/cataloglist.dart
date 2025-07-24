import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_new/model/catlog_model.dart';
import 'package:project_new/pages/home_page_detail.dart';
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

        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePageDetail(catlog: catlog)));
          },
          child: Catalogitem(
              catalog: catlog
          ),
        );
      },
    );
  }
}
