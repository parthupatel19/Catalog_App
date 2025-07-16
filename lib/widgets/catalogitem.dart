import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_new/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../model/catlog_model.dart';

class Catalogitem extends StatelessWidget {
  final Item catalog;

  const Catalogitem({super.key, required this.catalog});


  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Image.network(catalog.image).box.rounded.py8.color(MyTheme.creamColor).make().py16().w40(context),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  catalog.name.text.bold.make(),
                  catalog.desc.text.textStyle(context.captionStyle).make(),

                  10.heightBox,

                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    buttonPadding: Vx.mOnly(right: 16),
                    children: [
                      "\$${catalog.price}".text.make(),
                      ElevatedButton(
                          onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(MyTheme.darkblueColor),
                        ),
                          child: "Buy".text.color(Colors.white).make(),
                      ),
                    ],
                  ).pOnly(right: 8.0)
                ],
              ) ,
          )
        ],
      ),
    ).white.rounded.square(150).make().py16();
  }
}
