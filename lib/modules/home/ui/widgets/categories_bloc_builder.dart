import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trendy_trade/modules/home/ui/widgets/category_item.dart';

import '../../logic/products/products_cubit.dart';
import '../../logic/products/products_state.dart';

class CategoriesBlocBuilder extends StatefulWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  State<CategoriesBlocBuilder> createState() => _CategoriesBlocBuilderState();
}

class _CategoriesBlocBuilderState extends State<CategoriesBlocBuilder> {
  var selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) =>
          current is LoadingCategories ||
          current is SuccessCategories ||
          current is ErrorCategories,
      builder: (context, state) {
        return state.maybeWhen(
            loadingCategories: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            successCategories: (categoriesResponseModel) {
              return SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesResponseModel.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                        context
                            .read<ProductsCubit>()
                            .getProducts(categoriesResponseModel[index].id!);
                      },
                      child: CategoryItem(
                        categoriesResponseModel: categoriesResponseModel[index],
                        itemIndex: index,
                        selectedIndex: selectedCategoryIndex,
                      ),
                    );
                  },
                ),
              );
            },
            errorCategories: (error) {
              return Center(
                child: Text(
                  error.toString(),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            orElse: () {
              return const SizedBox.shrink();
            });
      },
    );
  }
}
