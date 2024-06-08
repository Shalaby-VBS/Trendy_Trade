import 'package:flutter/material.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/product_model.dart';

class ProductPlusAndMinus extends StatefulWidget {
  final ProductModel? productModel;
  const ProductPlusAndMinus({super.key, this.productModel});

  @override
  State<ProductPlusAndMinus> createState() => _ProductPlusAndMinusState();
}

class _ProductPlusAndMinusState extends State<ProductPlusAndMinus> {
  var productQuantity = 0;

  final List<ProductModel> cartItems = [
    // ProductModel(name: 'Product 1', price: 29.99, quantity: 1),
    // ProductModel(name: 'Product 2', price: 49.99, quantity: 2),
    // ProductModel(name: 'Product 3', price: 19.99, quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                if (productQuantity > 0) {
                  productQuantity--;
                }
              });
            },
          ),
        ),
        horizontalSpace(8),
        Container(
          alignment: Alignment.center,
          width: 20,
          height: 20,
          child: Text(
            productQuantity == 0 ? '0' : '$productQuantity',
            style: TextStyles.size16BlackW600,
          ),
        ),
        horizontalSpace(8),
        Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              setState(() {
                if (productQuantity < 9) {
                  productQuantity++;
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
