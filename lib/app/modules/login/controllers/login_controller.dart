// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/widget/loading/loading_widget.dart';
import 'package:flutter_challenge/app/widget/loading/snackbar_helper.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController inputUserId = TextEditingController();

  TextEditingController inputPassword = TextEditingController();
  RxBool obscurePasswordText = true.obs;

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

  void onChangeObscurePasswordText() {
    obscurePasswordText.value = !obscurePasswordText.value;
  }

  onValidationFormInput(String? val) {
    String valueUserId = inputUserId.text.toString().trim();
    String valuePassword = inputPassword.text.toString().trim();

    if (valueUserId.isEmpty || valuePassword.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Future doLogIn() async {
    bool validation = onValidationFormInput(null);
    if (validation) {
      Get.dialog(const LoadingWidget(isLoading: true, isWithDecor: true));
      Future.delayed(const Duration(seconds: 3), () {
        snackbarHelper(
          message: "Login Berhasil",
          isSuccess: true,
          mainButtonOnPressed: () {
            Get.closeAllSnackbars();
          },
          duration: const Duration(seconds: 6),
        );
        if (Get.isDialogOpen ?? false) Navigator.of(Get.overlayContext!).pop();
      });
    } else {
      snackbarHelper(
        message: "User ID dan atau Password anda belum diisi.",
        isSuccess: false,
        mainButtonOnPressed: () {
          Get.closeAllSnackbars();
        },
        duration: const Duration(seconds: 6),
      );
    }
  }
}
