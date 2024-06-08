import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/themes/colors_manager.dart';
import 'package:trendy_trade/core/widgets/app_texts.dart';
import 'package:trendy_trade/core/widgets/appbar_back_button.dart';

class AppBars {
  static AppBar auth({
    required BuildContext context,
    required bool withBackButton,
  }) {
    return AppBar(
      backgroundColor: ColorsManager.primary,
      toolbarHeight: 56.h,
      elevation: 0,
      leading:
          withBackButton ? const AppBarBackButton() : const SizedBox.shrink(),
      titleSpacing: 0,
      centerTitle: true,
      title: AppTexts.buildAppBarTitle("Trendy Trade"),
    );
  }
}
