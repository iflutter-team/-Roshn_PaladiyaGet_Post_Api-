import 'package:api_demo/screens/home_page/home_screen.dart';
import 'package:api_demo/screens/signup_page/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  textSignUpButton() {
    Get.to(() => const SignUpPage());
  }

   check() {
    Get.to(() => const ApiDemo());
  }
}
