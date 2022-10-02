import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/app_column.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:restourant_delivery/widgets/icon_and_text_widget.dart';
import 'package:restourant_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = 220.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // slider section or carasoul
        Container(
            height: Dimensions.containerHeigth320,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return Stack(children: [
                    Container(
                      height: Dimensions.containerHeigth220,
                      margin: EdgeInsets.only(
                          left: Dimensions.width10, right: Dimensions.width10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green.shade200,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image/food2.jpg"),
                        ),
                      ),
                    ),

                    // white container text
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: Dimensions.containerHeigth120,
                        margin:
                            EdgeInsets.only(left: 32, right: 32, bottom: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 5,
                                offset: Offset(0, 5),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(-5, 0),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(5, 0),
                              ),
                            ]),
                        child: Container(
                            padding: EdgeInsets.only(
                                top: Dimensions.heigth15,
                                left: Dimensions.width15,
                                right: Dimensions.width15),
                            child: AppColumn(text: "Chicken Healthy")),
                      ),
                    )
                  ]);
                })),

        // dots
        DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mailnColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.heigth5)),
          ),
        ),

        // Recommended text
        Container(
          margin: EdgeInsets.only(
              left: Dimensions.width30,
              top: Dimensions.heigth10,
              bottom: Dimensions.heigth20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Recommended"),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: EdgeInsets.only(bottom: 0.5),
                  child: BigText(
                      text: ".",
                      size: Dimensions.heigth30,
                      color: Color.fromRGBO(0, 0, 0, 0.259))),
              SizedBox(width: Dimensions.width10),
              SmallText(text: "Food pairing"),
              SizedBox(width: Dimensions.width10),
            ],
          ),
        ),
        // list of Recommended food add images
        Container(
          height: Dimensions.heigth800,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: ((context, index) => Container(
                  margin: EdgeInsets.only(
                    top: Dimensions.heigth10,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  child: Row(children: [
                    // image Setion
                    Container(
                        height: Dimensions.heigth120,
                        width: Dimensions.width120,
                        margin: EdgeInsets.only(
                          bottom: Dimensions.heigth5,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.heigth20),
                            color: Colors.white38,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/r_food2.jpg"),
                            ))),
                    // text container
                    Expanded(
                      child: Container(
                        height: Dimensions.width100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.heigth20),
                            bottomRight: Radius.circular(Dimensions.heigth20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              top: Dimensions.heigth10,
                              bottom: Dimensions.heigth10,
                              right: Dimensions.width20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BigText(text: "Fish Skin Healthy"),
                                SmallText(text: "Nktt"),
                                // the row of icons
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconAndTextWidget(
                                        icon: Icons.circle_sharp,
                                        text: "Normal",
                                        incolor: AppColors.iconColor1),
                                    IconAndTextWidget(
                                        icon: Icons.location_on,
                                        text: "1.7km",
                                        incolor: AppColors.mailnColor),
                                    IconAndTextWidget(
                                        icon: Icons.access_time_rounded,
                                        text: "32min",
                                        incolor: AppColors.iconColor2),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    )
                  ]),
                )),
          ),
        )
      ],
    );
  }
}
