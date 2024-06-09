import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/categories_response_model.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;

  // products
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.success(List<ProductModel> productsList) =
      Success;
  const factory ProductsState.error(ErrorHandler errorHandler) = Error;

  // categories
  const factory ProductsState.loadingCategories() = LoadingCategories;
  const factory ProductsState.successCategories(
      List<CategoriesResponseModel> categoriesList) = SuccessCategories;
  const factory ProductsState.errorCategories(ErrorHandler errorHandler) =
      ErrorCategories;
}
