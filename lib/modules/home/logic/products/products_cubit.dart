import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/home/logic/products/products_state.dart';

import '../../data/models/product_model.dart';
import '../../data/repos/products_repo.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;

  ProductsCubit(this._productsRepo) : super(ProductsState.initial());

  final List<ProductModel> products = [];

  void getProducts() async {
    emit(const ProductsState.loading());
    final response = await _productsRepo.getProducts();
    response.when(
      success: (productsResponse) {
        products.addAll(productsResponse.productsList!);
        emit(ProductsState.success(productsResponse.productsList!));
      },
      failure: (error) {
        emit(ProductsState.error(error));
      },
    );
  }
}
