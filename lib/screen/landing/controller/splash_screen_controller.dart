import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:speed_test/app/extension/context_extensions.dart';
import '../../../app/components/message/error_message_dialog.dart';
import '../../../app/navigation/screens.dart';
import '../../../core/i10n/i10n.dart';

class SplashScreenController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext get context => scaffoldKey.currentContext!;

  @override
  void onReady() {
    super.onReady();
    _init();
  }

  Future<void> _init() async {
    try {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarBrightness: Brightness.light));

      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

      final delay = Future.delayed(const Duration(seconds: 3));

      if (!await checkInternet()) return;

      delay.whenComplete(() => _navigateToHomeScreen());
    } catch (e) {
      tryAgainMessage(AppLocalization.getLabels.defaultError);
    }
  }

  Future<bool> checkInternet() async {
    if (await context.isInternetAvaible()) {
      return true;
    } else {
      ErrorMessageDialog.show(
          text: AppLocalization.getLabels.checkYourInternetConnection,
          barrierDismissible: false,
          buttonText: AppLocalization.getLabels.tryAgain,
          onTap: () {
            Navigator.pop(context);
            _init();
          });
    }
    return false;
  }

  _navigateToHomeScreen() {
    Navigator.pushNamedAndRemoveUntil(
        context, Screens.instance.main.homeScreen, (route) => false);
  }

  tryAgainMessage(String message) {
    ErrorMessageDialog.show(
      text: message,
      barrierDismissible: false,
      buttonText: 'Tekrar Dene',
      onTap: () {
        Navigator.pop(scaffoldKey.currentContext!);
        _init();
      },
    );
  }
}
