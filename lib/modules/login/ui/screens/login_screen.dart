import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/modules/login/logic/login/login_cubit.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/text_styles.dart';
import '../../../../core/utils/app_utils.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/appbars.dart';
import '../../logic/login/login_state.dart';
import '../widgets/dont_have_an_account.dart';
import '../widgets/login_bloc_listener.dart';
import '../widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppUtils.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBars.auth(context: context, withBackButton: false),
        backgroundColor: Colors.white,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            verticalSpace(24),
            AppTexts.buildTitle('Join Trendy Trade'),
            verticalSpace(4),
            AppTexts.buildSubtitle(
                'Sign in to your account to continue trading.'),
            verticalSpace(24),
            const LoginForm(),
            verticalSpace(24),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return AppButton(
                  onPressed: () {
                    if (context
                        .read<LoginCubit>()
                        .formKey
                        .currentState!
                        .validate()) {
                      context.read<LoginCubit>().emitLoginStates();
                    }
                  },
                  child: state is Loading
                      ? const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          strokeWidth: 2,
                        )
                      : Text(
                          "Login",
                          style: TextStyles.size14WhiteW600,
                        ),
                );
              },
            ),
            verticalSpace(24),
            const DontHaveAnAccount(),
            const LoginBlocListener(),
          ],
        ),
      ),
    );
  }
}
