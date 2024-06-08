import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/get_cart_response_model.dart';

class CartRepo {
  final ApiService _apiService;

  CartRepo(this._apiService);

  Future<ApiResult<GetCartResponseModel>> getCart() async {
    try {
      final response = await _apiService.getCartItems();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
