import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_test/screen/speed/controller/speed_screen_controller.dart';
import 'package:speed_test/screen/speed/view/speed_screen_view.dart';

class SpeedScreen extends StatelessWidget {
  const SpeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SpeedScreenController(),
      builder: (_) => const SpeedScreenView(),
    );
  }
}
