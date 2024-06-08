import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/login/data/models/login_response.dart';
import 'package:trendy_trade/modules/profile/data/repos/profile_repo.dart';
import 'package:trendy_trade/modules/profile/logic/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  LoginResponse userData = LoginResponse();

  void emitProfileStates() async {
    emit(const ProfileState.loading());
    final response = await _profileRepo.getProfileData();
    response.when(
      success: (loginResponse) {
        userData = loginResponse;
        emit(ProfileState.success(loginResponse));
      },
      failure: (error) {
        emit(ProfileState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
