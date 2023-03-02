import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_test/screen/landing/view/splash_screen_view.dart';
import 'controller/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashScreenController(),
      builder: (_)=>const SplashScreenView(),
    );
  }
}