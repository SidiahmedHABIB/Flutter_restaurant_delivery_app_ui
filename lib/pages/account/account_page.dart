import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restourant_delivery/pages/auth/sign_in_page.dart';
import 'package:restourant_delivery/widgets/app_icon.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/account_widget.dart';
import 'package:restourant_delivery/widgets/big_text.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: AppColors.mailnColor,
        title: Center(
            child: BigText(
          text: "Account",
          size: 30,
          color: Colors.white,
        )),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 15, bottom: 15),
        child: Column(children: [
          Center(
              child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: AppColors.mailnColor,
                borderRadius: BorderRadius.circular(100)),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 100,
            ),
          )),

          SizedBox(height: Dimensions.heigth10),
          // expanded column information
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // name
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.person,
                      iconColor: Colors.white,
                      backgroundcolor: AppColors.mailnColor,
                      size: 50,
                      iconsize: 30,
                    ),
                    bigText: BigText(
                      text: "Sidi Ahmed Habib",
                      size: 22,
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                  // phone nember
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.phone,
                      iconColor: Colors.white,
                      backgroundcolor: AppColors.yellowColor,
                      size: 50,
                      iconsize: 30,
                    ),
                    bigText: BigText(
                      text: "+222 34 13 65 **",
                      size: 22,
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                  // email adress
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.mail,
                      iconColor: Colors.white,
                      backgroundcolor: AppColors.yellowColor,
                      size: 50,
                      iconsize: 30,
                    ),
                    bigText: BigText(
                      text: "sidiahmedhabib@gmail.com",
                      size: 22,
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                  // location
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.location_on,
                      iconColor: Colors.white,
                      backgroundcolor: AppColors.yellowColor,
                      size: 50,
                      iconsize: 30,
                    ),
                    bigText: BigText(
                      text: "Sousse",
                      size: 22,
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                  // commants
                  AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.comment,
                      iconColor: Colors.white,
                      backgroundcolor: Colors.red.shade400,
                      size: 50,
                      iconsize: 30,
                    ),
                    bigText: BigText(
                      text: "chat",
                      size: 22,
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                  // logout
                  GestureDetector(
                    onTap: () => Get.to(SignInPage()),
                    child: AccountWidget(
                      appIcon: AppIcon(
                        icon: Icons.logout,
                        iconColor: Colors.white,
                        backgroundcolor: Colors.red.shade400,
                        size: 50,
                        iconsize: 30,
                      ),
                      bigText: BigText(
                        text: "Logout",
                        size: 22,
                      ),
                    ),
                  ),
                  SizedBox(height: Dimensions.heigth15),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
