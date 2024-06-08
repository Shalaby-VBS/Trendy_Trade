import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/themes/text_styles.dart';
import '../../logic/product/product_cubit.dart';
import '../screens/product_details_screen.dart';

class ProductCard extends StatelessWidget {
  final int? productId;
  final String? pictureURL;
  final String? name;
  final String? description;
  final num? price;

  const ProductCard(
      {super.key,
      this.pictureURL,
      this.name,
      this.description,
      this.price,
      this.productId});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => context.read<ProductCubit>(),
            child: ProductDetailsScreen(productId: productId ?? 1),
          ),
        ),
      ),
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
            CachedNetworkImage(
              imageUrl: pictureURL ??
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxdAOY_-vITFVI-ej84s2U_ErxhOly-z3y_Q&s',
              height: 200,
              color: Colors.white,
              width: double.infinity,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => const Shimmer(
                gradient: LinearGradient(colors: [Colors.grey, Colors.white]),
                child: SizedBox(
                  height: 200,
                  width: double.infinity,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: Colors.red,
              ),
            ),
            Text(
              name!,
              style: TextStyles.size16BlackW600,
            ),
            const SizedBox(height: 8),
            Text(
              description!,
              style: TextStyles.size14BlackW400,
            ),
            const SizedBox(height: 8),
            Text(
              price.toString(),
              style: TextStyles.size24BlackW700,
            ),
          ],
        ),
      ),
    );
  }
}
