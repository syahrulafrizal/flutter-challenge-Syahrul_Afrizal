import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/themes/app_colors.dart';

class ButtonOutlinedPrimary extends StatelessWidget {
  const ButtonOutlinedPrimary({
    Key? key,
    this.height,
    this.width = double.infinity,
    required this.child,
    required this.action,
    this.borderColor = AppColors.GRAY_400,
    this.backgroundColor = Colors.transparent,
  }) : super(key: key);
  final double? height;
  final double? width;
  final Widget child;
  final Function action;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        action();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
          border: Border.all(
            width: 1,
            color: borderColor!,
          ),
        ),
        child: child,
      ),
    );
  }
}
