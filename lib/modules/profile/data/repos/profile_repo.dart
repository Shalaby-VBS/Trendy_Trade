import 'package:trendy_trade/core/networking/api_error_handler.dart';
import 'package:trendy_trade/core/networking/api_result.dart';
import 'package:trendy_trade/core/networking/api_service.dart';
import 'package:trendy_trade/modules/login/data/models/login_response.dart';

class ProfileRepo {
  final ApiService _apiService;

  ProfileRepo(this._apiService);

  Future<ApiResult<LoginResponse>> getProfileData() async {
    try {
      final response = await _apiService.getProfileData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
