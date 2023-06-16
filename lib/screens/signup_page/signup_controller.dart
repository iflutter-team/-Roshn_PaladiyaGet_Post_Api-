import 'package:api_demo/screens/login_page/login_screen.dart';
import 'package:api_demo/screens/signup_page/signup_api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user_Model.dart';

class SignUpPageController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  User? signupUser;

  signUpButton() {
    Get.to(const LoginPage());
  }

  Future userSignUp() async {
    Map<String, dynamic> body = {};
    body = {
      "FirstName": name.text.trim(),
      "LastName": number.text.trim(),
      "EmailId": email.text.trim(),
      "Password": password.text.trim(),
    };
    signupUser = await RegisterApi.registerUser(body);
    if (signupUser != null && signupUser!.status == 1) {
      Get.snackbar("Login Successful", "Sign Up");
    }
  }
}
