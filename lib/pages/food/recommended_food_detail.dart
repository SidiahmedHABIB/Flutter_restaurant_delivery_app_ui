import 'package:flutter/material.dart';
import 'package:restourant_delivery/widgets/app_icon.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/exandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: Dimensions.heigth100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.heigth20),
              child: Container(
                child: Center(
                    child: BigText(
                  text: "Fish Skin Healthy",
                  size: Dimensions.heigth25,
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: Dimensions.heigth10,
                  bottom: Dimensions.heigth10,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(245, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.heigth20),
                        topRight: Radius.circular(Dimensions.heigth20))),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.containerHeigth320,
            flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
              "assets/image/r_food2.jpg",
              width: double.maxFinite,
              fit: BoxFit.cover,
            )),
          ),
          SliverToBoxAdapter(
              child: Container(
            margin: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Center(
                child: ExandabelTextWidget(
              text:
                  "Healthy eating doesn’t have to be overly complicated. If you feel overwhelmed by all the conflicting nutrition and diet advice out there, you’re not alone. It seems that for every expert who tells you a certain food is good for you, you’ll find another saying exactly the opposite. The truth is that while some specific foods or nutrients have been shown to have a beneficial effect on mood, it’s your overall dietary pattern that is most important. The cornerstone of a healthy diet should be to replace processed food with real food whenever possible. Eating food that is as close as possible to the way nature made it can make a huge difference to the way you think, look, and feel.",
            )),
          ))
        ],
      ),

      // footer bar
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(Dimensions.heigth5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppIcon(
                  iconsize: Dimensions.heigth20,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundcolor: AppColors.mailnColor,
                ),
                SizedBox(width: Dimensions.width20),
                BigText(
                  text: "\$ 15 X 1",
                  size: Dimensions.heigth25,
                ),
                SizedBox(width: Dimensions.width20),
                AppIcon(
                  icon: Icons.add,
                  iconsize: Dimensions.heigth20,
                  iconColor: Colors.white,
                  backgroundcolor: AppColors.mailnColor,
                ),
              ],
            ),
          ),
          Container(
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.heigth20,
                        right: Dimensions.width20,
                        bottom: Dimensions.heigth20,
                        left: Dimensions.width20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Dimensions.heigth20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite, color: AppColors.mailnColor),
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
                      text: "Add to cart",
                      color: Colors.white,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
