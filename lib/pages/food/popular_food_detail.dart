import 'package:flutter/material.dart';
import 'package:restourant_delivery/widgets/app_icon.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/app_column.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/exandable_text_widget.dart';
import 'package:get/get.dart';

class PopularFoodDetail extends StatelessWidget {
  PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.heigth300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/food2.jpg"))),
            ),
          ),
          // row icon widgets
          Positioned(
            top: Dimensions.width35,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(
                    backgroundcolor: Colors.white,
                    icon: Icons.clear,
                    iconColor: AppColors.mailnColor,
                  ),
                  AppIcon(
                    backgroundcolor: Colors.white,
                    icon: Icons.shopping_cart_outlined,
                    iconColor: AppColors.mailnColor,
                  ),
                ]),
          ),

          // introduction header of food
          Positioned(
            left: 0,
            right: 0,
            top: Dimensions.heigth300 - 50,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                top: Dimensions.heigth20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.heigth20),
                  topRight: Radius.circular(Dimensions.heigth20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(
                    text: "Chiken Healthy",
                    sizebigtext: Dimensions.width25,
                  ),
                  SizedBox(height: Dimensions.heigth20),
                  BigText(
                      text: "Introduce",
                      size: Dimensions.heigth18,
                      color: Colors.black54),
                  SizedBox(height: Dimensions.heigth10),
                  // exandable text widget

                  Expanded(
                    child: SingleChildScrollView(
                      child: ExandabelTextWidget(
                          text:
                              "Healthy eating doesn’t have to be overly complicated. If you feel overwhelmed by all the conflicting nutrition and diet advice out there, you’re not alone. It seems that for every expert who tells you a certain food is good for you, you’ll find another saying exactly the opposite. The truth is that while some specific foods or nutrients have been shown to have a beneficial effect on mood, it’s your overall dietary pattern that is most important. The cornerstone of a healthy diet should be to replace processed food with real food whenever possible. Eating food that is as close as possible to the way nature made it can make a huge difference to the way you think, look, and feel."),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      // footer bar
      bottomNavigationBar: Container(
        height: Dimensions.heigth120,
        padding: EdgeInsets.only(
          top: Dimensions.width30,
          left: Dimensions.width20,
          right: Dimensions.width20,
          bottom: Dimensions.heigth20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonbackgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(Dimensions.heigth40),
            topLeft: Radius.circular(Dimensions.heigth40),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.heigth20,
                right: Dimensions.width20,
                bottom: Dimensions.heigth20,
                left: Dimensions.width20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.heigth20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.remove, color: AppColors.signColor),
                SizedBox(width: Dimensions.width5),
                Text("1", style: TextStyle(fontSize: Dimensions.heigth18)),
                SizedBox(width: Dimensions.width5),
                Icon(Icons.add, color: AppColors.signColor),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: Dimensions.heigth20,
                right: Dimensions.width20,
                bottom: Dimensions.heigth20,
                left: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.mailnColor,
              borderRadius: BorderRadius.circular(Dimensions.width20),
            ),
            child: BigText(
              text: "\$ 10 Add to cart",
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
