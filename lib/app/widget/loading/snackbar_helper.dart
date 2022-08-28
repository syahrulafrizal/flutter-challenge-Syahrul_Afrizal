import 'package:flutter/material.dart';
import 'package:get/get.dart';

snackbarHelper(
    {String? title,
    String? message,
    bool isSuccess = true,
    void Function()? mainButtonOnPressed,
    Widget? mainButton,
    Duration duration = const Duration(seconds: 3)}) {
  return Get.snackbar(title ?? (isSuccess ? 'Success' : 'Error'),
      message != null ? (message.length > 100 ? message.substring(0, 100) : message) : '',
      backgroundColor: isSuccess ? Colors.green.withOpacity(0.7) : Colors.red.withOpacity(0.7),
      duration: duration,
      barBlur: 8.0,
      mainButton: mainButtonOnPressed == null
          ? null
          : TextButton(
              onPressed: mainButtonOnPressed,
              child: mainButton ??
                  const Text(
                    'Oke',
                    style: TextStyle(color: Colors.white),
                  )),
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0, top: 30),
      icon: Icon(isSuccess ? Icons.check_circle : Icons.error, color: Colors.white));
}
