import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/colors_manager.dart';
import '../themes/text_styles.dart';

class AppTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Function(String?) validator;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? hintText;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final BuildContext context;
  final bool? isObscureText;
  const AppTextFormField({
    super.key,
    required this.title,
    this.hintText,
    this.prefixIcon,
    required this.controller,
    required this.validator,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.suffixIcon,
    required this.context,
    this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: _buildTitle(),
      subtitle: _buildTextFormField(),
    );
  }

  Padding _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Text(
        title,
        style: TextStyles.size14BlackW500,
      ),
    );
  }

  TextFormField _buildTextFormField() {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      focusNode: focusNode,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      style: TextStyles.size14BlackW400,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        hintStyle: TextStyles.size14GreyW500,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ColorsManager.greyLighter, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(color: ColorsManager.primary, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
      ),
      obscureText: isObscureText ?? false,
    );
  }
}
