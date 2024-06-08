import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors_manager.dart';
import '../themes/text_styles.dart';

class AppButton extends StatelessWidget {
  final Function()? onPressed;
  final String? title;
  final Widget? child;
  final Color? backgroundColor;
  final double? height;
  const AppButton({
    super.key,
    this.onPressed,
    this.child,
    this.backgroundColor,
    this.title,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? ColorsManager.primary,
        padding: EdgeInsets.all(16.r),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
        minimumSize: Size(
          double.infinity,
          height ?? 60.h,
        ),
      ),
      child: child ??
          Text(
            title ?? "No title!",
            style: TextStyles.size14WhiteW600,
          ),
    );
  }
}
