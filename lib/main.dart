import 'package:api_demo/screens/home_page/home_screen.dart';
import 'package:api_demo/screens/login_page/login_screen.dart';
import 'package:api_demo/screens/signup_page/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: const SignUpPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}
