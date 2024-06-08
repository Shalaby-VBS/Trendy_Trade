import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/api_error_handler.dart';
import '../data/models/get_cart_response_model.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.getCartLoading() = GetCartLoading;
  const factory CartState.getCartSuccess(List<GetCartModel?>? cartItems) =
      GetCartSuccess;
  const factory CartState.getCartError(ErrorHandler errorHandler) = GetCartError;
}
