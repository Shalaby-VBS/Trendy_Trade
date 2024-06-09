import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/home/logic/products/products_state.dart';

import '../../data/repos/products_repo.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;

  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());

  void getProducts(int categoryId) async {
    emit(const ProductsState.loading());
    final response = await _productsRepo.getProducts(categoryId);
    response.when(
      success: (productsResponse) {
        emit(ProductsState.success(productsResponse.productsList!));
      },
      failure: (error) {
        emit(ProductsState.error(error));
      },
    );
  }

  void getCategories() async {
    emit(const ProductsState.loadingCategories());
    final response = await _productsRepo.getCategories();
    response.when(
      success: (categoriesResponse) {
        emit(ProductsState.successCategories(categoriesResponse));
        getProducts(categoriesResponse.first.id!);
      },
      failure: (error) {
        emit(ProductsState.errorCategories(error));
      },
    );
  }
}
