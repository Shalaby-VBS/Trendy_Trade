import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/widgets/appbars.dart';

import '../../logic/product/product_cubit.dart';
import '../../logic/product/product_state.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int? productId;
  const ProductDetailsScreen({super.key, this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductCubit>(context)
        .getSingleProduct(productId: widget.productId ?? 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBars.auth(context: context, withBackButton: true),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            children: [],
          );
        },
      ),
    );
  }
}
