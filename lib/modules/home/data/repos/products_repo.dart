import 'package:trendy_trade/core/networking/api_error_handler.dart';
import 'package:trendy_trade/core/networking/api_result.dart';
import 'package:trendy_trade/core/networking/api_service.dart';
import 'package:trendy_trade/modules/home/data/models/products_response.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<ProductsResponse>> getProducts() async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
