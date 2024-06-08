import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';

import '../../../../core/networking/api_error_handler.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = Loading;
  const factory ProductState.success(List<ProductModel> productsList) = Success;
  const factory ProductState.error(ErrorHandler errorHandler) = Error;
}
