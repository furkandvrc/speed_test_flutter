import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_test_dart/classes/server.dart';
import 'package:speed_test_dart/speed_test_dart.dart';

class SpeedScreenController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  BuildContext get context => scaffoldKey.currentContext!;
  SpeedTestDart tester = SpeedTestDart();
  List<Server> bestServersList = [];
  double downloadRate = 0.0;
  double uploadRate = 0.0;
  RxBool isLoading = true.obs;

  @override
  void onInit() async {
    await setBestServers();
    await startDownloadRate();
    await startUploadRate();
    isLoading.value = false;
    update();
    super.onInit();
  }

  Future<void> setBestServers() async {
    final settings = await tester.getSettings();
    final servers = settings.servers;

    final setBestServersList = await tester.getBestServers(
      servers: servers,
    );

    bestServersList = setBestServersList;
  }

  Future<void> startDownloadRate() async {
    downloadRate = (await tester.testDownloadSpeed(servers: bestServersList));
  }

  Future<void> startUploadRate() async {
    uploadRate = (await tester.testUploadSpeed(servers: bestServersList));
  }
}
