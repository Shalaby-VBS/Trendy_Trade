import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trendy_trade/modules/cart/logic/cart_cubit.dart';
import 'package:trendy_trade/modules/cart/logic/cart_state.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/appbars.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // final List<ProductModel> cartItems = [
  //   ProductModel(name: 'Product 1', price: 29.99, quantity: 1),
  //   ProductModel(name: 'Product 2', price: 49.99, quantity: 2),
  //   ProductModel(name: 'Product 3', price: 19.99, quantity: 1),
  // ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CartCubit>()..getCartItems(),
      child: Scaffold(
        appBar: AppBars.auth(
            context: context, withBackButton: false, title: "Cart"),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              BlocBuilder<CartCubit, CartState>(
                buildWhen: (previous, current) =>
                    current is GetCartLoading ||
                    current is GetCartSuccess ||
                    current is GetCartError,
                builder: (context, state) {
                  return state.maybeWhen(getCartLoading: () {
                    return const Center(child: CircularProgressIndicator());
                  }, getCartSuccess: (cartItems) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: cartItems?.length,
                        itemBuilder: (context, index) {
                          final productModel = cartItems?[index];
                          return Card(
                            elevation: 4.0,
                            margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: ListTile(
                              title: Text(productModel?.productName ?? ''),
                              subtitle: Text('Price: \$${productModel?.price}'),
                              trailing:
                                  Text('Quantity: ${productModel?.quantity}'),
                            ),
                          );
                        },
                      ),
                    );
                  }, getCartError: (errorHandler) {
                    return Text(errorHandler.apiErrorModel.message ?? '');
                  }, orElse: () {
                    return const SizedBox.shrink();
                  });
                },
              ),
              // Expanded(
              //   child: ListView.builder(
              //     itemCount: cartItems.length,
              //     itemBuilder: (context, index) {
              //       final productModel = cartItems[index];
              //       return Card(
              //         elevation: 4.0,
              //         margin: const EdgeInsets.symmetric(vertical: 10.0),
              //         child: ListTile(
              //           title: Text(productModel.name ?? ''),
              //           subtitle: Text('Price: \$${productModel.price}'),
              //           trailing: Text('Quantity: ${productModel.quantity}'),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your checkout logic here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 15.0),
                ),
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
