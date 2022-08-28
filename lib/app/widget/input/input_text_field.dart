import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_challenge/app/themes/app_colors.dart';
import 'package:flutter_challenge/app/themes/screen.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText, msgError, label;
  final bool validate, obscureText, isPassword;
  final bool? enabled;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final dynamic onChangeObscureText;
  final dynamic onChangeValue;
  final dynamic onSubmited;
  final int maxLines;
  final Widget? prefixIcon, suffixIcon;
  final TextInputAction action;
  const InputTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.msgError,
    required this.validate,
    required this.obscureText,
    required this.isPassword,
    required this.keyboardType,
    required this.textCapitalization,
    required this.label,
    required this.onChangeObscureText,
    required this.maxLines,
    required this.onChangeValue,
    required this.action,
    this.prefixIcon,
    this.onSubmited,
    this.enabled = true,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen size = Screen(MediaQuery.of(context).size);
    return TextField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines,
      cursorColor: AppColors.NEUTRAL_80,
      style: TextStyle(
        fontSize: size.getWidthPx(12),
        color: AppColors.NEUTRAL_80,
        fontWeight: FontWeight.w400,
      ),
      autofocus: false,
      enabled: enabled,
      keyboardType: keyboardType,
      inputFormatters: <TextInputFormatter>[
        if (keyboardType == TextInputType.number) FilteringTextInputFormatter.digitsOnly
      ],
      textCapitalization: textCapitalization,
      onChanged: onChangeValue,
      onSubmitted: onSubmited,
      textInputAction: action,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(
          0,
          16,
          12,
          16,
        ),
        filled: false,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.NEUTRAL_30,
          fontSize: size.getWidthPx(12),
          fontWeight: FontWeight.w400,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.DANGER_DEFAULT,
            width: 1,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: AppColors.DANGER_DEFAULT,
            width: 1,
          ),
        ),
        errorText: !validate ? msgError : null,
        errorMaxLines: 2,
        errorStyle: TextStyle(
          fontWeight: FontWeight.w400,
          color: AppColors.DANGER_DEFAULT,
          fontSize: size.getWidthPx(10),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
