import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/login/logic/login/login_state.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_preferences_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginResponse) async {
      await saveUserToken(loginResponse.token ?? '');
      await SharedPrefHelper.setData(
          SharedPrefKeys.userRole, loginResponse.role);
      await SharedPrefHelper.setData(
          SharedPrefKeys.userFullName, loginResponse.userName);
      await SharedPrefHelper.setData(
          SharedPrefKeys.userEmail, loginResponse.email);
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);

    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
