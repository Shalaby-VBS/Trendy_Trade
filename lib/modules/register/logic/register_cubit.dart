import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_preferences_helper.dart';
import '../../../core/networking/dio_factory.dart';
import '../data/models/register_request_body.dart';
import '../data/repos/register_repo.dart';
import 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const RegisterState.loading());
    final response = await _registerRepo.signup(
      RegisterRequestBody(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (registerResponse) async {
      await saveUserToken(registerResponse.token ?? '');
      emit(RegisterState.success(registerResponse));
    }, failure: (error) {
      emit(RegisterState.error(
          error: error.apiErrorModel.message.toString() ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
