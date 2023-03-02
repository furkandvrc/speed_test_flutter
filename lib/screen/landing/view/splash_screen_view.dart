import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/constants/app/padding_and_radius_size.dart';
import '../../../app/constants/assets/assets.dart';
import '../controller/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: paddingXXXL),
        child: Center(
          child: Image.asset(
            splashGif,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
