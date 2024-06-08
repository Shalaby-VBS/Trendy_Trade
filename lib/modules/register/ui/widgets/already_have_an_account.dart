import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/themes/text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.size14BlackW400,
          ),
          TextSpan(
            text: '   Login',
            style: TextStyles.size13BlueW600,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
