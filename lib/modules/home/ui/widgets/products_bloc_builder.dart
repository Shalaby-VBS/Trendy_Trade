import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/products/products_cubit.dart';
import '../../logic/products/products_state.dart';
import 'product_card.dart';

class ProductsBlocBuilder extends StatefulWidget {
  const ProductsBlocBuilder({super.key});

  @override
  State<ProductsBlocBuilder> createState() => _ProductsBlocBuilderState();
}

class _ProductsBlocBuilderState extends State<ProductsBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      builder: (context, state) {
        return state.maybeWhen(
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            success: (productsList) {
              return Expanded(
                child: ListView.builder(
                  itemCount: productsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ProductCard(productModel: productsList[index]);
                  },
                ),
              );
            },
            error: (error) {
              return Center(
                child: Text(
                  error.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }
}
