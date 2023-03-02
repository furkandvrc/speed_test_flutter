import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_test/screen/home/view/home_screen_view.dart';

import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeScreenController(),
      builder: (_) => const HomeScreenView(),
    );
  }
}
