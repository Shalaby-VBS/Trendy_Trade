import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/home/logic/products/products_cubit.dart';
import 'package:trendy_trade/modules/home/ui/screens/home_screen.dart';
import 'package:trendy_trade/modules/home/ui/screens/product_details_screen.dart';
import 'package:trendy_trade/modules/login/logic/login/login_cubit.dart';
import 'package:trendy_trade/modules/login/logic/toggle/toggle_cubit.dart';
import 'package:trendy_trade/modules/login/ui/screens/login_screen.dart';

import '../../modules/home/logic/product/product_cubit.dart';
import '../../modules/register/logic/register_cubit.dart';
import '../../modules/register/ui/screens/register_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? currentContext = navigatorKey.currentContext;
  Route generateRoute(RouteSettings settings) {
    // MARK: - This arguments variable is used to pass data between routes.
    // final arguments = settings.arguments;

    // MARK: - This switch statement is used to navigate between routes.
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider<LoginCubit>(
                      create: (context) => getIt<LoginCubit>()),
                  BlocProvider<ToggleCubit>(
                      create: (context) => getIt<ToggleCubit>()),
                ], child: const LoginScreen()));

      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider<RegisterCubit>(
                      create: (context) => getIt<RegisterCubit>()),
                  BlocProvider<ToggleCubit>(
                      create: (context) => getIt<ToggleCubit>()),
                ], child: const RegisterScreen()));

      case Routes.homeScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  // BlocProvider<ProductsCubit>(
                  //     create: (context) => getIt<ProductCubit>()),
                  BlocProvider<ProductsCubit>(
                      create: (context) =>
                          getIt<ProductsCubit>()..getProducts()),
                ], child: const HomeScreen()));

      case Routes.productDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<ProductCubit>(
                create: (context) => getIt<ProductCubit>(),
                child: const ProductDetailsScreen()));

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
