import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';

import '../../../../core/networking/api_error_handler.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.success(List<ProductModel> productsList) =
      Success;
  const factory ProductsState.error(ErrorHandler errorHandler) = Error;
}
