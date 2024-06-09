import 'package:flutter/material.dart';

import '../../../../core/helpers/event_bus.dart';
import '../../../../core/helpers/spaces.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/product_model.dart';

class ProductPlusAndMinus extends StatefulWidget {
  final ProductModel productModel;
  const ProductPlusAndMinus({super.key, required this.productModel});

  @override
  State<ProductPlusAndMinus> createState() => _ProductPlusAndMinusState();
}

class _ProductPlusAndMinusState extends State<ProductPlusAndMinus> {
  @override
  void initState() {
    super.initState();

    for (var product in cartItems) {
      if (product.id == widget.productModel.id) {
        widget.productModel.quantity = product.quantity;
      }
    }
  }

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
                if (widget.productModel.quantity == 1) {
                  cartItems.remove(widget.productModel);
                  eventBus.fire(CartIconEvent(cartItems));
                }

                if (widget.productModel.quantity > 0) {
                  widget.productModel.quantity =
                      widget.productModel.quantity - 1;
                  eventBus.fire(CartIconEvent(cartItems));
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
            widget.productModel.quantity == 0
                ? '0'
                : '${widget.productModel.quantity}',
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
                if (widget.productModel.quantity < 9) {
                  widget.productModel.quantity =
                      widget.productModel.quantity + 1;
                  eventBus.fire(CartIconEvent(cartItems));
                  if (!cartItems.contains(widget.productModel)) {
                    cartItems.add(widget.productModel);
                  }
                }
              });
            },
          ),
        ),
      ],
    );
  }
}
