import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/home/food_page_body.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // showing the header
        Container(
          margin: EdgeInsets.only(
              top: Dimensions.heigth35, bottom: Dimensions.heigth15),
          padding: EdgeInsets.only(
              left: Dimensions.width20, right: Dimensions.width20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              children: [
                BigText(text: "Mauritania", color: AppColors.mailnColor),
                Row(
                  children: [
                    SmallText(text: "Nouakchott", color: Colors.black54),
                    Icon(Icons.arrow_drop_down_rounded)
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                height: Dimensions.heigth45,
                width: Dimensions.width45,
                child: Icon(Icons.search, color: Colors.white),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.heigth15),
                    color: AppColors.mailnColor),
              ),
            )
          ]),
        ),

        // showing the body
        Expanded(
          child: SingleChildScrollView(child: FoodPageBody()),
        ),
      ]),
    );
  }
}
