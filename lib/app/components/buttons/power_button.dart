import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:speed_test/app/theme/colors.dart';

class PowerButton extends StatelessWidget {
  const PowerButton({
    super.key,
    
  });

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.primary,
          shape: BoxShape.circle,
        ),
        width: 100,
        height: 100,
        child: const Icon(
          Icons.power_settings_new,
          size: 35,
        ),
      ),
    );
  }
}
