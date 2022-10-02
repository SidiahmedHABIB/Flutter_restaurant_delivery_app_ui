import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restourant_delivery/splash/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SignUpPage(),
      home: SplashScreen(),
    );
  }
}
