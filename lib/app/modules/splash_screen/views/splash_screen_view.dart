import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.onSplashInit();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/header-splash.png',
            ),
            Expanded(
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            Image.asset(
              'assets/footer-splash.png',
            ),
          ],
        ),
      ),
    );
  }
}
