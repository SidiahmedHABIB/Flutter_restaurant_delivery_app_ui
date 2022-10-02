import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/auth/sign_in_page.dart';
import 'package:restourant_delivery/pages/home/home_page.dart';
import 'package:restourant_delivery/utils/colors.dart';
import 'package:restourant_delivery/utils/dimensions.dart';
import 'package:restourant_delivery/widgets/app_text_field.dart';
import 'package:restourant_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
          padding: EdgeInsets.symmetric(horizontal: Dimensions.width10),
          child: Column(children: [
            SizedBox(height: Dimensions.heigth40 * 1.2),
            Container(
                child: Center(
              child: Image(
                image: AssetImage("assets/image/logo.png"),
                width: 170,
              ),
            )),
            SizedBox(height: Dimensions.heigth20),
            Column(children: [
              // Email
              AppTextField(
                textController: emailController,
                hintText: "Email",
                icon: Icons.mail,
              ),
              SizedBox(height: Dimensions.heigth20),
              // password
              AppTextField(
                  textController: passwordController,
                  hintText: "PassWord",
                  icon: Icons.password),
              SizedBox(height: Dimensions.heigth20),
              // Phone
              AppTextField(
                textController: phoneController,
                hintText: "Phone",
                icon: Icons.phone,
              ),
              SizedBox(height: Dimensions.heigth20),
              // Name
              AppTextField(
                textController: nameController,
                hintText: "Name",
                icon: Icons.person,
              ),
              SizedBox(height: Dimensions.heigth25),
              // sign up button
              GestureDetector(
                onTap: () {
                  Get.to(HomePage());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.width40,
                      vertical: Dimensions.heigth10),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white, fontSize: Dimensions.heigth25),
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.mailnColor,
                      borderRadius: BorderRadius.circular(Dimensions.heigth25)),
                ),
              ),
              SizedBox(height: Dimensions.heigth5),
              // have an account
              GestureDetector(
                onTap: () => Get.to(SignInPage()),
                child: BigText(
                  text: "Have an account already?",
                  color: Colors.black38,
                  size: 18,
                ),
              ),
              SizedBox(height: Dimensions.heigth15),
              // sign up using the methodes
              BigText(
                text: "Sign up using one of the following methods",
                size: Dimensions.heigth15,
                color: Colors.black38,
              ),
              SizedBox(height: Dimensions.heigth10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: Dimensions.heigth25,
                    backgroundImage: AssetImage("assets/image/google.png"),
                  ),
                  SizedBox(width: Dimensions.width10),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: Dimensions.heigth25,
                    backgroundImage: AssetImage("assets/image/facebook.png"),
                  ),
                  SizedBox(width: Dimensions.width10),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: Dimensions.heigth25,
                    backgroundImage: AssetImage("assets/image/instagram.png"),
                  ),
                  SizedBox(width: Dimensions.width10),
                ],
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
