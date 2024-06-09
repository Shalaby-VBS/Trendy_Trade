import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/core/helpers/extensions.dart';
import 'package:trendy_trade/core/helpers/spaces.dart';
import 'package:trendy_trade/core/themes/text_styles.dart';

import '../../../core/helpers/event_bus.dart';
import '../../../core/themes/colors_manager.dart';
import '../../../core/widgets/appbars.dart';
import '../../bottom_nav/bottom_nav_screen.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  num? totalPrice = 0;
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
      appBar: AppBars.auth(
          context: context, withBackButton: true, title: "Checkout"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: cartItems.isNullOrEmpty()
            ? Center(
                child: Text(
                  'No Items for pay.',
                  style: TextStyles.size18BlackW600,
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: cartItems.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final productModel = cartItems[index];
                        return Card(
                          elevation: 4.0,
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Product Name
                                      Text(
                                        productModel.name ?? '',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.black),
                                      ),
                                      const SizedBox(height: 5.0),
                                      // Product Price
                                      Text(
                                        'Price: \$${productModel.price}',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 5.0),
                                      // Product Quantity
                                      Text(
                                        'Quantity: ${productModel.quantity}',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 16,
                                        ),
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
                  ),
                  verticalSpace(14.h),
                  Container(
                    height: 50.h,
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sub Total", style: TextStyles.size18BlackW600),
                        SizedBox(width: 20.w),
                        Text("\$ ${getTotalPrice()}",
                            style: TextStyles.size18BlackW600),
                      ],
                    ),
                  ),
                  verticalSpace(4.h),
                  Container(
                    height: 50.h,
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fees", style: TextStyles.size18BlackW600),
                        SizedBox(width: 20.w),
                        Text('20%', style: TextStyles.size18BlackW600),
                      ],
                    ),
                  ),
                  verticalSpace(4.h),
                  Container(
                    height: 50.h,
                    padding: EdgeInsets.all(10.r),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total", style: TextStyles.size18BlackW600),
                        SizedBox(width: 20.w),
                        Text("\$ ${getTotalPrice() / 20 * 100}",
                            style: TextStyles.size18BlackW600),
                      ],
                    ),
                  ),
                  verticalSpace(20.h),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: ColorsManager.primary,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 65.0,
                          vertical: 15.0,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              title: Text('Payment Successful 🎉',
                                  style: TextStyles.size20BlackW600),
                              content: Text(
                                  '❤️ Thank you for shopping with us!',
                                  style: TextStyles.size14BlackW400),
                              actions: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNavScreen(),
                                      ),
                                    );
                                    cartItems.clear();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: ColorsManager.primary,
                                    minimumSize: Size(double.infinity, 45.h),
                                  ),
                                  child: Text(
                                    'OK',
                                    style: TextStyles.size14WhiteW600,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text(
                        'Pay',
                        style: TextStyles.size21WhiteW600,
                      ),
                    ),
                  ),
                  verticalSpace(20.h),
                ],
              ),
      ),
    );
  }

  num getTotalPrice() {
    num total = 0;
    for (var item in cartItems) {
      total += item.price! * item.quantity!;
    }
    return total;
  }
}
