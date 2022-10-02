import 'package:flutter/material.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/small_text.dart';

class CartHistory extends StatelessWidget {
  const CartHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // header of page history
      Container(
        width: double.maxFinite,
        color: AppColors.mailnColor,
        padding: EdgeInsets.only(
            top: Dimensions.heigth45, bottom: Dimensions.heigth15),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          BigText(
            text: "Cart History",
            color: Colors.white,
            size: Dimensions.heigth25,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
            size: Dimensions.heigth30,
          )
        ]),
      ),

      // listview static
      // 1
      Container(
        margin: EdgeInsets.only(
            top: Dimensions.heigth15,
            left: Dimensions.width20,
            right: Dimensions.width20),
        child: Column(
          children: [
            Container(
              height: Dimensions.heigth120,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // date and images
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "09/21/2022 08:05 PM"),
                        SizedBox(height: Dimensions.heigth5),
                        // row of list images
                        Row(
                          children: [
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/image/food2.jpg"),
                                    ))),
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/image/food2.jpg"),
                                    ))),
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/image/food2.jpg"),
                                    ))),
                          ],
                        )
                      ],
                    ),

                    // total of itmes and button one more
                    Container(
                      height: Dimensions.width40 + Dimensions.heigth40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SmallText(
                            text: "Total",
                            color: AppColors.titleColor,
                            size: Dimensions.heigth15,
                          ),
                          BigText(
                            text: "3 Items",
                            color: AppColors.titleColor,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width10,
                                vertical: Dimensions.heigth5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mailnColor, width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.heigth5)),
                            child: SmallText(
                              text: "one more",
                              color: AppColors.mailnColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
      // 2
      Container(
        margin: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
        child: Column(
          children: [
            Container(
              height: Dimensions.heigth120,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // date and images
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "09/19/2022 10:00 PM"),
                        SizedBox(height: Dimensions.heigth5),
                        // row of list images
                        Row(
                          children: [
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/r_food2.jpg"),
                                    ))),
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/image/food2.jpg"),
                                    ))),
                          ],
                        )
                      ],
                    ),

                    // total of itmes and button one more
                    Container(
                      height: Dimensions.width40 + Dimensions.heigth40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SmallText(
                            text: "Total",
                            color: AppColors.titleColor,
                            size: Dimensions.heigth15,
                          ),
                          BigText(
                            text: "2 Items",
                            color: AppColors.titleColor,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width10,
                                vertical: Dimensions.heigth5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mailnColor, width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.heigth5)),
                            child: SmallText(
                              text: "one more",
                              color: AppColors.mailnColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
      // 3
      Container(
        margin: EdgeInsets.only(
            left: Dimensions.width20, right: Dimensions.width20),
        child: Column(
          children: [
            Container(
              height: Dimensions.heigth120,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // date and images
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(text: "09/21/2022 08:05 PM"),
                        SizedBox(height: Dimensions.heigth5),
                        // row of list images
                        Row(
                          children: [
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/r_food2.jpg"),
                                    ))),
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/r_food2.jpg"),
                                    ))),
                            Container(
                                height:
                                    Dimensions.heigth45 + Dimensions.heigth30,
                                width: Dimensions.width45 + Dimensions.width30,
                                margin: EdgeInsets.only(
                                  right: Dimensions.width10,
                                ),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        Dimensions.heigth10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/image/r_food2.jpg"),
                                    ))),
                          ],
                        )
                      ],
                    ),

                    // total of itmes and button one more
                    Container(
                      height: Dimensions.width40 + Dimensions.heigth40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SmallText(
                            text: "Total",
                            color: AppColors.titleColor,
                            size: Dimensions.heigth15,
                          ),
                          BigText(
                            text: "3 Items",
                            color: AppColors.titleColor,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.width10,
                                vertical: Dimensions.heigth5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.mailnColor, width: 1),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.heigth5)),
                            child: SmallText(
                              text: "one more",
                              color: AppColors.mailnColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    ]));
  }
}
