import 'dart:io';
import 'package:flutter/material.dart' show BuildContext;

extension CheckInternetExtension on BuildContext {
  Future<bool> isInternetAvaible() async {
    try {
      final String _checkInternetURL = 'google.com';
      final result = await InternetAddress.lookup(_checkInternetURL);
      final isActive = result.isNotEmpty && result[0].rawAddress.isNotEmpty ? true : false;

      return isActive;
    } on SocketException catch (_) {

      return false;
    }
  }
}
