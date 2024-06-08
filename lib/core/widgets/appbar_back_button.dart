import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/themes/colors_manager.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      style: const ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      color: ColorsManager.greyLightest,
      iconSize: 26.sp,
      icon: const Icon(Icons.arrow_back_ios_new),
    );
  }
}
