import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors_manager.dart';

class PasswordVisibilitySuffixButton extends StatelessWidget {
  final Function()? onTap;
  final bool state;
  const PasswordVisibilitySuffixButton(
      {super.key, this.onTap, required this.state});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        state ? Icons.visibility : Icons.visibility_off,
        color: state ? ColorsManager.primary : Colors.grey.shade700,
        size: 20.sp,
      ),
    );
  }
}
