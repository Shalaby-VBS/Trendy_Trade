import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/helpers/spaces.dart';
import 'package:trendy_trade/core/themes/text_styles.dart';

import '../../../core/helpers/event_bus.dart';
import '../../../core/widgets/appbars.dart';
import '../../home/ui/widgets/product_plus_and_minus.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    super.key,
  });

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    super.initState();
    eventBus.on<CartIconEvent>().listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBars.auth(context: context, withBackButton: false, title: "Cart"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: cartItems.isNullOrEmpty()
            ? Center(
                child: Text(
                  'No Items in Cart.',
                  style: TextStyles.size18BlackW600,
                ),
              )
            : Column(
                children: [
                  ListView.builder(
                    itemCount: cartItems.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final productModel = cartItems[index];
                      return Card(
                        elevation: 4.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              // Product Image
                              CachedNetworkImage(
                                imageUrl: productModel.pictureURL ?? '',
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 15.0),
                              // Product Details
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Product Name
                                    Text(
                                      productModel.name ?? '',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 5.0),
                                    // Product Price
                                    Text(
                                      'Price: \$${productModel.price}',
                                      style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    // Product Quantity
                                    Row(
                                      children: [
                                        Text(
                                          'Quantity: ${productModel.quantity}',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        const Spacer(),
                                        ProductPlusAndMinus(
                                          productModel: productModel,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // start check out process
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50.0,
                        vertical: 15.0,
                      ),
                    ),
                    child: const Text('Checkout'),
                  ),
                  verticalSpace(20),
                ],
              ),
      ),
    );
  }
}
