import 'package:bookbroo/src/features/authentication/screen/BookDetails/BookDetails.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/home_screen.dart';
import 'package:bookbroo/src/features/authentication/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffd3c5ad),
      ),
      home: SplashScreen(),
    );
  }
}
