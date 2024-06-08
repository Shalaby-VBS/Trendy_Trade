import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/home/logic/product/product_state.dart';

import '../../data/repos/product_repo.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepo _productRepo;

  ProductCubit(this._productRepo) : super(const ProductState.initial());

  void getSingleProduct({required int productId}) async {
    emit(const ProductState.loading());
    final response = await _productRepo.getSingleProduct(productId);
    response.when(
      success: (productResponse) {
        emit(ProductState.success(productResponse.productsList!));
      },
      failure: (error) {
        emit(ProductState.error(error));
      },
    );
  }
}
