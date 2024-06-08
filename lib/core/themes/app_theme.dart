import 'package:flutter/material.dart';
import 'package:trendy_trade/core/themes/colors_manager.dart';

ThemeData getAppTheme(BuildContext context) => ThemeData(
      // fontFamily: context.locale == AppLocalizations.en
      //     ? AppFontFamilies.SFProText
      //     : AppFontFamilies.SFProText,
      scaffoldBackgroundColor: ColorsManager.background,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.white, centerTitle: true),
      brightness: Brightness.light,
      primaryColor: ColorsManager.primary,
      // colorScheme: const ColorScheme.light(primary: Colors.white),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorsManager.primary),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorsManager.primary,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: ColorsManager.primary),
        focusedBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: ColorsManager.border.shade100, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          // borderSide: BorderSide(color: AppColors.border.shade100, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
