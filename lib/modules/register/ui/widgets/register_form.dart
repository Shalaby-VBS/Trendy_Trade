import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/login/ui/widgets/password_visibility_suffix_button.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/helpers/validations.dart';
import '../../../../core/widgets/app_text_form_field.dart';
import '../../../login/logic/toggle/toggle_cubit.dart';
import '../../../login/logic/toggle/toggle_state.dart';
import '../../logic/register_cubit.dart';
import '../../logic/register_state.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return Form(
          key: context.read<RegisterCubit>().formKey,
          child: Column(
            children: [
              AppTextFormField(
                title: 'First Name',
                hintText: 'Enter your first name',
                controller: context.read<RegisterCubit>().firstNameController,
                validator: (value) => Validations.validateName(context, value),
                context: context,
              ),
              verticalSpace(16),
              AppTextFormField(
                title: 'Last Name',
                hintText: 'Enter your last name',
                controller: context.read<RegisterCubit>().lastNameController,
                validator: (value) => Validations.validateName(context, value),
                context: context,
              ),
              verticalSpace(16),
              AppTextFormField(
                title: 'Email',
                hintText: 'Enter your email',
                controller: context.read<RegisterCubit>().emailController,
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
                      controller:
                          context.read<RegisterCubit>().passwordController,
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
