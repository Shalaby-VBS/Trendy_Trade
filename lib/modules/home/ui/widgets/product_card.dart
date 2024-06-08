import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';

import '../../../../core/helpers/spaces.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/themes/text_styles.dart';
import '../../data/models/product_model.dart';
import 'product_image.dart';
import 'product_plus_and_minus.dart';

class ProductCard extends StatefulWidget {
  final ProductModel? productModel;
  const ProductCard({super.key, this.productModel});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen,
            arguments: widget.productModel);
      },
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.productModel?.id ?? '',
              child: ProductImage(
                image: widget.productModel?.pictureURL,
              ),
            ),
            Text(
              widget.productModel?.name ?? 'Product Name',
              style: TextStyles.size16BlackW600,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(8.h),
            Text(
              widget.productModel?.description ?? 'Product Description',
              style: TextStyles.size14BlackW400,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(12.h),
            Row(
              children: [
                Text(
                  'Price: ',
                  style: TextStyles.size14BlackW400,
                ),
                Text(
                  '${widget.productModel?.price}',
                  style: TextStyles.size18BlackW600,
                ),
                const Spacer(),
                const ProductPlusAndMinus(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
