import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/home/home_page.dart';
import 'package:restourant_delivery/widgets/app_icon.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // cart page header
        Positioned(
            top: Dimensions.heigth35,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.to(HomePage()),
                  child: AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: Colors.white,
                    backgroundcolor: AppColors.mailnColor,
                    iconsize: Dimensions.heigth20,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(HomePage());
                        },
                        child: AppIcon(
                          icon: Icons.home,
                          iconColor: Colors.white,
                          backgroundcolor: AppColors.mailnColor,
                          iconsize: Dimensions.heigth20,
                        ),
                      ),
                      SizedBox(width: Dimensions.width20),
                      AppIcon(
                        icon: Icons.shopping_cart_outlined,
                        iconColor: Colors.white,
                        backgroundcolor: AppColors.mailnColor,
                        iconsize: Dimensions.heigth20,
                      )
                    ],
                  ),
                )
              ],
            )),

        // list of items in cart
        Positioned(
          top: Dimensions.heigth20 * 5,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.width100,
            child: Row(
              children: [
                // container of image
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(bottom: Dimensions.heigth10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food2.jpg")),
                      borderRadius: BorderRadius.circular(20)),
                ),

                // part of text
                Expanded(
                    child: Container(
                  height: Dimensions.heigth100,
                  padding: EdgeInsets.only(
                      left: Dimensions.width10,
                      top: Dimensions.heigth5,
                      bottom: Dimensions.heigth5),
                  margin: EdgeInsets.only(bottom: Dimensions.heigth10),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(
                            text: "Chicken Healthy",
                            color: Colors.black54,
                          ),
                          SmallText(text: "Healthy"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(text: "\$ 10", color: Colors.redAccent),
                              Container(
                                child: Row(children: [
                                  Icon(Icons.remove,
                                      color: AppColors.signColor),
                                  SizedBox(width: Dimensions.width5),
                                  BigText(text: "1"),
                                  SizedBox(width: Dimensions.width5),
                                  Icon(Icons.add, color: AppColors.signColor),
                                ]),
                              )
                            ],
                          ),
                        ]),
                  ),
                ))
              ],
            ),
          ),
        ),
        ///////////////////////
        Positioned(
          top: Dimensions.heigth40 * 5,
          left: Dimensions.width20,
          right: Dimensions.width20,
          child: Container(
            width: double.maxFinite,
            height: Dimensions.width100,
            child: Row(
              children: [
                // container of image
                Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(bottom: Dimensions.heigth10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/r_food2.jpg")),
                      borderRadius: BorderRadius.circular(20)),
                ),

                // part of text
                Expanded(
                    child: Container(
                  height: Dimensions.heigth100,
                  padding: EdgeInsets.only(
                      left: Dimensions.width10,
                      top: Dimensions.heigth5,
                      bottom: Dimensions.heigth5),
                  margin: EdgeInsets.only(bottom: Dimensions.heigth10),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(
                            text: "Fish Skin Healthy",
                            color: Colors.black54,
                          ),
                          SmallText(text: "Healthy"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BigText(text: "\$ 15", color: Colors.redAccent),
                              Container(
                                child: Row(children: [
                                  Icon(Icons.remove,
                                      color: AppColors.signColor),
                                  SizedBox(width: Dimensions.width5),
                                  BigText(text: "1"),
                                  SizedBox(width: Dimensions.width5),
                                  Icon(Icons.add, color: AppColors.signColor),
                                ]),
                              )
                            ],
                          ),
                        ]),
                  ),
                ))
              ],
            ),
          ),
        ),
      ]),

      // cart page footer bar
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
                SizedBox(width: Dimensions.width5),
                BigText(text: "\$ 25"),
                SizedBox(width: Dimensions.width5),
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
              text: "Sheck out ",
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
