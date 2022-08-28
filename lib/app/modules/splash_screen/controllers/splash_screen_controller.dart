// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:flutter_challenge/app/routes/app_pages.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSplashInit() {
    Timer(
      const Duration(seconds: 2),
      () async {
        Get.offAllNamed(Routes.LOGIN);
      },
    );
  }
}
