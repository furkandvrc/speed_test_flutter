import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_test/app/components/buttons/power_button.dart';
import 'package:speed_test/app/constants/app/padding_and_radius_size.dart';
import 'package:speed_test/app/navigation/screens.dart';
import 'package:speed_test/app/theme/colors.dart';
import 'package:speed_test/app/theme/text_style.dart';
import 'package:speed_test/core/i10n/i10n.dart';
import '../controller/home_screen_controller.dart';

class HomeScreenView extends GetView<HomeScreenController> {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                    AppLocalization.getLabels.testYourInternetConnection,
                    textStyle: s26W700White(),
                    speed: const Duration(milliseconds: 80))
              ],
              totalRepeatCount: 1000,
              pause: const Duration(milliseconds: 1000),
              stopPauseOnTap: true,
              displayFullTextOnTap: true,
            ),
            const SizedBox(height: radiusXXXXL),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, Screens.instance.main.speedScreen),
              child: const PowerButton(),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          controller.isDarkMode.update((val) {
            controller.isDarkMode.value = !Get.isDarkMode;
          });
          Get.changeThemeMode(
              Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
        },
        mini: true,
        child: Obx(() => Icon(
            controller.isDarkMode.value ? Icons.light_mode : Icons.dark_mode,
            color: controller.isDarkMode.value
                ? AppColor.lightSecondary
                : AppColor.background)),
      ),
    );
  }
}
