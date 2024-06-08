import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';
import 'package:trendy_trade/modules/home/logic/products/products_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../logic/products/products_state.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>()..getProducts(),
      child: RefreshIndicator(
        onRefresh: _refresh,
        child: Scaffold(
          appBar: AppBars.auth(context: context, withBackButton: false),
          body: BlocBuilder<ProductsCubit, ProductsState>(
            builder: (context, state) {
              List<ProductModel> products =
                  context.read<ProductsCubit>().products;
              return state is Loading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return ProductCard(productModel: products[index]);
                      },
                    );
            },
          ),
        ),
      ),
    );
  }

  Future<void> _refresh() async {
    if (mounted) {
      context.read<ProductsCubit>().getProducts();
    }
  }
}
