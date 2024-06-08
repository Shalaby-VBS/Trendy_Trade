import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/routing/routes.dart';

import '../../../../core/themes/text_styles.dart';
import '../../logic/login/login_cubit.dart';
import '../../logic/login/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          success: (dynamic) {
            context.pushNamed(Routes.bottomNavScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(16.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              error,
              style: TextStyles.size14BlackW400,
            ),
          ],
        ),
      ),
    );
  }
}
