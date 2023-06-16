import 'package:api_demo/screens/common_page/common_screen.dart';
import 'package:api_demo/screens/login_page/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget loginPageTextField() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField(
          "e-mail",
          "e-mail",
          const Icon(Icons.mail_lock_outlined),
          false,
          controller.email,
          TextInputType.emailAddress),
    ),
  );
}

Widget loginPagePasswordTextField() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: commonTextField("Password", "Password", const Icon(Icons.password),
          true, controller.password, TextInputType.text),
    ),
  );
}

Widget loginButton() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        width: 200,
        child: ElevatedButton(
          onPressed: () => controller.check(),
          child: const Text('Login'),
        ),
      ),
    ),
  );
}

Widget textSignUpButton() {
  return GetBuilder<LoginPageController>(
    builder: (controller) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?"),
        TextButton(
          onPressed: () => controller.textSignUpButton(),
          child: const Text('Sign Up'),
        ),
      ],
    ),
  );
}
