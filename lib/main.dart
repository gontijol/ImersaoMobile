import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:letscode/app/modules/login/controller.dart';
import 'package:letscode/app/modules/login/login_page.dart';

void main() {
  Get.lazyPut(() => LoginController());
  runApp(const GetMaterialApp(
    home: LoginPage(),
  ));
}
