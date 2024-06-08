import 'package:flutter/material.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/themes/text_styles.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';

import '../../core/helpers/constants.dart';
import '../../core/helpers/shared_preferences_helper.dart';
import '../../core/routing/routes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars.auth(
          context: context, withBackButton: false, title: "Profile"),
      body: Center(
        child: InkWell(
          onTap: () async {
            await SharedPrefHelper.clearAllData();
            if (context.mounted) {
              context.pushNamedAndRemoveUntil(
                Routes.loginScreen,
                predicate: (route) => false,
              );
            }
          },
          child: Text('Logut', style: TextStyles.size20BlackW600),
        ),
      ),
    );
  }
}
