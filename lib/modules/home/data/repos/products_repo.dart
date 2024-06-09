import 'package:trendy_trade/core/networking/api_error_handler.dart';
import 'package:trendy_trade/core/networking/api_result.dart';
import 'package:trendy_trade/core/networking/api_service.dart';
import 'package:trendy_trade/modules/home/data/models/products_response.dart';

import '../models/categories_response_model.dart';

class ProductsRepo {
  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<ProductsResponse>> getProducts(int categoryId) async {
    try {
      final response = await _apiService.getProducts(categoryIds: categoryId);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<CategoriesResponseModel>>> getCategories() async {
    try {
      final response = await _apiService.getCategories();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
