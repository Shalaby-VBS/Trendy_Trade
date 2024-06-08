import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/login/logic/login/login_cubit.dart';
import 'package:trendy_trade/modules/login/ui/widgets/password_visibility_suffix_button.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/helpers/validations.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../logic/login/login_state.dart';
import '../../logic/toggle/toggle_cubit.dart';
import '../../logic/toggle/toggle_state.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().formKey,
          child: Column(
            children: [
              AppTextFormField(
                title: 'Email',
                hintText: 'Enter your email',
                controller: context.read<LoginCubit>().emailController,
                validator: (value) => Validations.validateEmail(context, value),
                context: context,
              ),
              verticalSpace(16),
              BlocProvider(
                create: (context) => ToggleCubit(),
                child: BlocBuilder<ToggleCubit, ToggleState>(
                  builder: (context, state) {
                    return AppTextFormField(
                      title: 'Password',
                      hintText: 'Enter your password',
                      controller: context.read<LoginCubit>().passwordController,
                      validator: (value) =>
                          Validations.validatePassword(context, value),
                      suffixIcon: PasswordVisibilitySuffixButton(
                        onTap: () => context.read<ToggleCubit>().toggle(),
                        state: state is ToggledOn,
                      ),
                      context: context,
                      isObscureText: state is ToggledOn,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
