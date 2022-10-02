import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/auth/sign_up_page.dart';
import 'package:restourant_delivery/pages/home/home_page.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/app_text_field.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.only(
              left: Dimensions.width10, right: Dimensions.width10),
          child: Column(children: [
            SizedBox(height: Dimensions.heigth40 * 1.2),
            // logo
            Container(
                child: Center(
              child: Image(
                image: AssetImage("assets/image/logo.png"),
                width: 180,
              ),
            )),
            SizedBox(height: Dimensions.heigth20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20),
                  child: Column(
                    children: [
                      // hello
                      BigText(
                        text: "Hello",
                        size: Dimensions.heigth30 * 2,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: Dimensions.width20),
                  child: Column(
                    children: [
                      // sign intoe your account
                      BigText(
                        text: "Sign into your account",
                        color: Colors.black38,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: Dimensions.heigth30),

            Column(children: [
              // Phone
              AppTextField(
                textController: phoneController,
                hintText: "Phone",
                icon: Icons.phone,
              ),
              SizedBox(height: Dimensions.heigth20),
              // password
              AppTextField(
                  textController: passwordController,
                  hintText: "Password",
                  icon: Icons.password),
              SizedBox(height: Dimensions.heigth20),
              // Sign into your account
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BigText(
                      text: "Sign into your account",
                      color: Colors.black38,
                      size: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.heigth45),

              // sign in button
              GestureDetector(
                onTap: () => Get.to(HomePage()),
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.width40,
                      vertical: Dimensions.heigth10),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white, fontSize: Dimensions.heigth25),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.mailnColor,
                      borderRadius: BorderRadius.circular(Dimensions.heigth25)),
                ),
              ),
              SizedBox(height: Dimensions.heigth25 * 2),
              // creat account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BigText(
                    text: "Don't have an account ? ",
                    color: Colors.black38,
                    size: 18,
                  ),
                  // button go to sign up
                  GestureDetector(
                    onTap: () => Get.to(SignUpPage()),
                    child: BigText(
                      text: "Create ",
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
