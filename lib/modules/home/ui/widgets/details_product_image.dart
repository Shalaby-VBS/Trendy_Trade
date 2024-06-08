import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DetailsProductImage extends StatelessWidget {
  final String? image;

  const DetailsProductImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image ?? '',
      height: 180.h,
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
      errorWidget: (context, url, error) {
        debugPrint('product image Error: $error');
        return Image.asset(
          'assets/image_placeholder.png',
          height: 180.h,
          width: double.infinity,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
