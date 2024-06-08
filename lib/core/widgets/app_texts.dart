import 'package:flutter/material.dart';

import '../themes/text_styles.dart';

class AppTexts {
  static buildAppBarTitle(String title) {
    return Text(
      title,
      style: TextStyles.size21WhiteW600,
    );
  }

  static buildTitle(String title) {
    return Text(
      title,
      style: TextStyles.size21GreyW600,
    );
  }

  static buildSubtitle(String subtitle) {
    return Text(
      subtitle,
      style: TextStyles.size14GreyW300,
    );
  }
}
