import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trendy_trade/modules/login/logic/toggle/toggle_cubit.dart';

import '../../modules/cart/data/repo/cart_repo.dart';
import '../../modules/cart/logic/cart_cubit.dart';
import '../../modules/home/data/repos/product_repo.dart';
import '../../modules/home/data/repos/products_repo.dart';
import '../../modules/home/logic/product/product_cubit.dart';
import '../../modules/home/logic/products/products_cubit.dart';
import '../../modules/login/data/repos/login_repo.dart';
import '../../modules/login/logic/login/login_cubit.dart';
import '../../modules/register/data/repos/register_repo.dart';
import '../../modules/register/logic/register_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // MARK: - Dio & ApiService.
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  /// MARK: Shared
  getIt.registerLazySingleton<ToggleCubit>(() => ToggleCubit());

  /// MARK: Login.
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  /// MARK: Register.
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  /// MARK: Home.
  getIt.registerLazySingleton<ProductsRepo>(() => ProductsRepo(getIt()));
  getIt.registerFactory<ProductsCubit>(() => ProductsCubit(getIt()));

  // MARK: - Products.
  getIt.registerLazySingleton<ProductRepo>(() => ProductRepo(getIt()));
  getIt.registerFactory<ProductCubit>(() => ProductCubit(getIt()));

  // MARK: - Cart.
   getIt.registerLazySingleton<CartRepo>(() => CartRepo(getIt()));
  getIt.registerFactory<CartCubit>(() => CartCubit(getIt()));
}
