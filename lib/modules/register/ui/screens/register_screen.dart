import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/text_styles.dart';
import '../../../../core/utils/app_utils.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../../core/widgets/appbars.dart';
import '../../logic/register_cubit.dart';
import '../../logic/register_state.dart';
import '../widgets/already_have_an_account.dart';
import '../widgets/register_bloc_listener.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppUtils.hideKeyboard(context),
      child: Scaffold(
        appBar: AppBars.auth(context: context, withBackButton: true),
        backgroundColor: Colors.white,
        body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            verticalSpace(24),
            AppTexts.buildTitle('Sign Up to Trendy Trade'),
            verticalSpace(4),
            AppTexts.buildSubtitle('Create an account to start trading.'),
            verticalSpace(24),
            const RegisterForm(),
            verticalSpace(24),
            BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
                return AppButton(
                  onPressed: () {
                    context.read<RegisterCubit>().emitSignupStates();
                  },
                  child: state is Loading
                      ? const CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                          strokeWidth: 2,
                        )
                      : Text(
                          "Sign Up",
                          style: TextStyles.size14WhiteW600,
                        ),
                );
              },
            ),
            verticalSpace(24),
            const AlreadyHaveAccountText(),
            const RegisterBlocListener(),
          ],
        ),
      ),
    );
  }
}
