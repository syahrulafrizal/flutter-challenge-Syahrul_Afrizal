import 'package:flutter/material.dart';
import 'package:flutter_challenge/app/themes/app_colors.dart';

class ButtonContainedPrimary extends StatelessWidget {
  const ButtonContainedPrimary({
    Key? key,
    this.height,
    this.width = double.infinity,
    required this.isEnable,
    required this.child,
    required this.action,
    this.enableColor = const Color(0XFF6338A1),
    this.disableColor = AppColors.GRAY_500,
    this.borderEnableColor = const Color(0XFF6338A1),
    this.borderDisableColor = AppColors.GRAY_500,
  }) : super(key: key);
  final double? height;
  final double? width;
  final bool isEnable;
  final Widget child;
  final Function action;
  final Color? enableColor;
  final Color? disableColor;
  final Color? borderEnableColor;
  final Color? borderDisableColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnable
          ? () {
              FocusScope.of(context).requestFocus(FocusNode());
              action();
            }
          : () {},
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isEnable ? enableColor : disableColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(100),
          ),
          border: Border.all(
            width: 1,
            color: isEnable ? enableColor! : disableColor!,
          ),
        ),
        child: child,
      ),
    );
  }
}
