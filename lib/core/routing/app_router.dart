import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/bottom_nav/bottom_nav_screen.dart';
import 'package:trendy_trade/modules/home/ui/screens/product_details_screen.dart';
import 'package:trendy_trade/modules/login/logic/login/login_cubit.dart';
import 'package:trendy_trade/modules/login/logic/toggle/toggle_cubit.dart';
import 'package:trendy_trade/modules/login/ui/screens/login_screen.dart';
import 'package:trendy_trade/modules/profile/logic/profile_cubit.dart';

import '../../modules/home/data/models/product_model.dart';
import '../../modules/profile/profile_screen.dart';
import '../../modules/register/logic/register_cubit.dart';
import '../../modules/register/ui/screens/register_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static BuildContext? currentContext = navigatorKey.currentContext;
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

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
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<RegisterCubit>(
                  create: (context) => getIt<RegisterCubit>()),
              BlocProvider<ToggleCubit>(
                  create: (context) => getIt<ToggleCubit>()),
            ],
            child: const RegisterScreen(),
          ),
        );

      case Routes.bottomNavScreen:
        return MaterialPageRoute(
          builder: (_) => const BottomNavScreen(),
        );

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      case Routes.productDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => ProductDetailsScreen(
            productModel: arguments as ProductModel,
          ),
        );

      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<ProfileCubit>(
                  create: (context) =>
                      getIt<ProfileCubit>()..emitProfileStates()),
            ],
            child: const ProfileScreen(),
          ),
        );

      default:
        null;
    }
    return null;
  }
}
