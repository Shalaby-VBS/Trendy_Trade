import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';
import 'package:trendy_trade/modules/home/logic/products/products_cubit.dart';

import '../../logic/products/products_state.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars.auth(context: context, withBackButton: false),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          List<ProductModel> products = context.read<ProductsCubit>().products;
          return state is Loading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      productId: products[index].id,
                      pictureURL: products[index].pictureURL,
                      name: products[index].name,
                      description: products[index].description,
                      price: products[index].price,
                    );
                  },
                );
        },
      ),
    );
  }
}
