import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/helpers/spaces.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';
import 'package:trendy_trade/modules/home/data/models/product_model.dart';

import '../widgets/details_product_image.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel? productModel;
  const ProductDetailsScreen({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars.auth(
          context: context, withBackButton: true, title: productModel?.name),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailsProductImage(
              image: productModel?.pictureURL,
            ),
            verticalSpace(16.h),
            Text(
              productModel?.name ?? '',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            verticalSpace(8.h),
            Text(
              productModel?.description ?? '',
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
            verticalSpace(8.h),
            Text(
              'Price: \$${productModel?.price}',
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
