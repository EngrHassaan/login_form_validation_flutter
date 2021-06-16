import 'package:flutter/material.dart';
import 'login_form.dart';
import 'home_page.dart';
void main() {
  runApp(MaterialApp(
    title: "Login Form Validation",
    home: LoginFormValidation(),
    routes: {
      "/home":(context)=>LoginFormValidation(),
      "/homepage":(context)=>HomePage()
    },
  ),
  );
}