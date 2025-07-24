import 'package:flutter/material.dart';
import 'package:project_new/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../model/catlog_model.dart';

class HomePageDetail extends StatelessWidget {

  final Item catlog;

  HomePageDetail({super.key, required this.catlog});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mOnly(right: 16),
          children: [
            "\$${catlog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(MyTheme.darkblueColor),
              ),
              child: "Add to cart".text.color(Colors.white).make(),
            ).wh(100, 50),
          ],
        ).pOnly(right: 8.0).py32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catlog.id.toString()),
                child: Image.network(catlog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catlog.name.text.xl4.bold.make(),
                      catlog.desc.text.textStyle(context.captionStyle).make(),
                      10.heightBox,
                    ],
                  ).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
