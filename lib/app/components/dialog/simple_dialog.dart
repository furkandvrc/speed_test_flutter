import 'dart:ui';

import 'package:flutter/material.dart';
import '../../constants/app/padding_and_radius_size.dart';
import '../../navigation/screens.dart';
import 'app_dialog.dart';


class AppSimpleDialog {
  Future show(
      {Widget? title,
      List<Widget>? children,
      EdgeInsets? padding,
      AlignmentGeometry? aligment,
      bool? barrierDismissible}) {
    return AppDialog().showDynamicDialog(
      barrierColor: Colors.black45,
      barrierDismissible: barrierDismissible,
      widget: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: SimpleDialog(
          alignment: aligment,
          insetPadding: const EdgeInsets.symmetric(horizontal: paddingM),
          title: title,
          titlePadding: EdgeInsets.zero,
          backgroundColor: Theme.of(Screens.context).cardTheme.color,
          contentPadding: padding ?? const EdgeInsets.all(paddingM),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radiusL)),
          children: children,
        ),
      ),
    );
  }
}