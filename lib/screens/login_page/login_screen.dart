import 'package:api_demo/screens/login_page/login_controller.dart';
import 'package:api_demo/screens/login_page/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   LoginPageController loginPageController = Get.put(LoginPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              loginPageTextField(),
              loginPagePasswordTextField(),
              loginButton(),
              textSignUpButton(),
            ],
          ),
        ),
      ),
    );
  }
}
