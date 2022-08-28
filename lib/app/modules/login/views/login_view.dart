import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/themes/app_colors.dart';
import 'package:flutter_challenge/app/themes/screen.dart';
import 'package:flutter_challenge/app/widget/button/button_contained_primary.dart';
import 'package:flutter_challenge/app/widget/input/input_text_field.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/header-login.png',
                        ),
                        SizedBox(
                          width: size.getWidthPx(20),
                        ),
                        Image.asset(
                          'assets/logo.png',
                          width: size.getWidthPx(110),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.wp(15),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: size.getWidthPx(28),
                        fontWeight: FontWeight.bold,
                      ),
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    SizedBox(
                      height: size.getWidthPx(4),
                    ),
                    Text(
                      'Please sign in to continue',
                      style: TextStyle(
                        color: AppColors.NEUTRAL_70,
                        fontSize: size.getWidthPx(13),
                        fontWeight: FontWeight.normal,
                      ),
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    SizedBox(
                      height: size.getWidthPx(24),
                    ),
                    Text(
                      'User ID',
                      style: TextStyle(
                        color: AppColors.NEUTRAL_70,
                        fontSize: size.getWidthPx(12),
                        fontWeight: FontWeight.w500,
                      ),
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    InputTextField(
                      controller: controller.inputUserId,
                      hintText: "User ID",
                      msgError: "",
                      validate: true,
                      obscureText: false,
                      isPassword: false,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      label: "User ID",
                      onChangeObscureText: null,
                      maxLines: 1,
                      onChangeValue: controller.onValidationFormInput,
                      action: TextInputAction.done,
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    SizedBox(
                      height: size.getWidthPx(24),
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                        color: AppColors.NEUTRAL_70,
                        fontSize: size.getWidthPx(12),
                        fontWeight: FontWeight.w500,
                      ),
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    InputTextField(
                      controller: controller.inputPassword,
                      hintText: "Password",
                      msgError: "",
                      validate: true,
                      obscureText: controller.obscurePasswordText.value,
                      isPassword: true,
                      keyboardType: TextInputType.text,
                      textCapitalization: TextCapitalization.none,
                      label: "Password",
                      onChangeObscureText: controller.onChangeObscurePasswordText,
                      maxLines: 1,
                      onChangeValue: controller.onValidationFormInput,
                      action: TextInputAction.done,
                      suffixIcon: IconButton(
                        icon: Icon(
                          !controller.obscurePasswordText.value
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          color: AppColors.NEUTRAL_30,
                          size: size.getWidthPx(18),
                        ),
                        onPressed: controller.onChangeObscurePasswordText,
                      ),
                    ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    SizedBox(
                      height: size.getWidthPx(24),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ButtonContainedPrimary(
                        height: size.getWidthPx(43),
                        width: size.wp(40),
                        isEnable: true,
                        action: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          controller.doLogIn();
                        },
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                              color: AppColors.NEUTRAL_WHITE,
                              fontSize: size.getWidthPx(13),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ).paddingSymmetric(horizontal: size.getWidthPx(20)),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account?",
                    style: TextStyle(
                      color: AppColors.NEUTRAL_50,
                      fontSize: size.getWidthPx(12.5),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: size.getWidthPx(2)),
                  InkWell(
                    onTap: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColors.RED_600,
                        fontSize: size.getWidthPx(12.5),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.getWidthPx(16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
