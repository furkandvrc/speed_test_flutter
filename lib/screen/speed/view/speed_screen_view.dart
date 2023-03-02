import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:speed_test/app/constants/app/padding_and_radius_size.dart';
import 'package:speed_test/core/i10n/i10n.dart';
import 'package:speed_test/screen/speed/controller/speed_screen_controller.dart';

import '../../../app/theme/text_style.dart';

class SpeedScreenView extends GetView<SpeedScreenController> {
  const SpeedScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalization.getLabels.downloadSpeedMbps,
              style: s26W700White(),
            ),
            const SizedBox(
              height: paddingXXXXL,
            ),
             GetBuilder<SpeedScreenController>(builder: (_) {
              return controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : Text(
                      controller.downloadRate.toStringAsFixed(2),
                      style: s20W500Dark(),
                    );
            }),
            const SizedBox(
              height: paddingXXXXL,
            ),
            Text(
              AppLocalization.getLabels.uploadSpeedMbps,
              style: s26W700White(),
            ),
            const SizedBox(
              height: paddingXXXXL,
            ),
            GetBuilder<SpeedScreenController>(builder: (_) {
              return controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : Text(
                      controller.uploadRate.toStringAsFixed(2),
                      style: s20W500Dark(),
                    );
            })
          ],
        ),
      ),
    ));
  }
}
