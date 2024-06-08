import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/api_service.dart';
import '../models/product_response.dart';

class ProductRepo {
  final ApiService _apiService;

  ProductRepo(this._apiService);

  Future<ApiResult<ProductResponse>> getSingleProduct(int productId) async {
    try {
      final response = await _apiService.getProduct(productId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
