import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';
import 'package:trendy_trade/modules/home/logic/products/products_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../widgets/categories_bloc_builder.dart';
import '../widgets/products_bloc_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..getCategories(),
      child: Scaffold(
        appBar: AppBars.auth(context: context, withBackButton: false),
        body: Container(
          margin: const EdgeInsets.fromLTRB(
            20.0,
            16.0,
            20.0,
            28.0,
          ),
          child: const Column(
            children: [
              CategoriesBlocBuilder(),
              ProductsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
