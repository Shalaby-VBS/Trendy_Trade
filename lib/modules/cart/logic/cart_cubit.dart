import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/cart/data/repo/cart_repo.dart';
import 'package:trendy_trade/modules/cart/logic/cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepo _cartRepo;

  CartCubit(this._cartRepo) : super(const CartState.initial());

  void getCartItems() async {
    emit(const CartState.getCartLoading());
    final response = await _cartRepo.getCart();
    response.when(
      success: (cartResponse) {
        emit(CartState.getCartSuccess(cartResponse.cartItems));
      },
      failure: (error) {
        emit(CartState.getCartError(error));
      },
    );
  }
}
