import 'dart:async';
import 'package:flutter/material.dart';
import 'package:restourant_delivery/pages/auth/sign_in_page.dart';
import 'package:restourant_delivery/pages/auth/sign_up_page.dart';
import 'package:restourant_delivery/pages/home/home_page.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => Get.to(SignInPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(child: Image.asset("assets/image/logo.png", width: 150)),
        Center(
            child: Text(
          "Restourant Delivery",
          style: TextStyle(
              color: Color.fromARGB(255, 22, 150, 124),
              fontSize: 32,
              fontWeight: FontWeight.bold),
        )),
      ]),
    );
  }
}
